class User < ActiveRecord::Base

  has_one :profile
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validate :validate_username

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

  def self.find_first_by_auth_conditions(warden_conditions)
	conditions = warden_conditions.dup
	if login = conditions.delete(:login)
	  where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
	else
	  if conditions[:username].nil?
	    where(conditions).first
	  else
	    where(username: conditions[:username]).first
	  end
	end
  end
  validates :username,
  :presence => true,
  :uniqueness => {
    :case_sensitive => false
  } 

  # Only allow letter, number, underscore and punctuation.
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def send_devise_notification(notification, *args)
    if Rails.env.production?
      # No worker process in production to handle scheduled tasks
      devise_mailer.send(notification, self, *args).deliver_now
    else
      devise_mailer.send(notification, self, *args).deliver_later
    end
  end
end

class AddStyleImage < ActiveRecord::Migration
  def self.up
    change_table :styles do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :styles, :avatar
  end
end

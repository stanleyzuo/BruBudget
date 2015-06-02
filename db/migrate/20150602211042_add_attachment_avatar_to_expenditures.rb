class AddAttachmentAvatarToExpenditures < ActiveRecord::Migration
  def self.up
    change_table :expenditures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :expenditures, :avatar
  end
end

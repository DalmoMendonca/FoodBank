class AddAttachmentImageToRecipients < ActiveRecord::Migration
  def self.up
    change_table :recipients do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :recipients, :image
  end
end

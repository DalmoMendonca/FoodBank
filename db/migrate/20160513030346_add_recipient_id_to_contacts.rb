class AddRecipientIdToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :recipient_id, :integer
    add_index :contacts, :recipient_id
  end
end

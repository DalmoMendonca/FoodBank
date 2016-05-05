class CreateRecipients < ActiveRecord::Migration
  def change
    create_table :recipients do |t|
      t.string :firstName
      t.string :lastName
      t.string :phoneNumber
      t.integer :householdSize
      t.string :address
      t.string :city
      t.string :zip
      t.text :publicNote
      t.text :privateNote

      t.timestamps null: false
    end
  end
end

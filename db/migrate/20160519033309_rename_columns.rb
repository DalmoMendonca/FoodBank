class RenameColumns < ActiveRecord::Migration
  def change
  	rename_column :recipients, :firstName, :first_name
  	rename_column :recipients, :lastName, :last_name
  	rename_column :recipients, :phoneNumber, :phone_number
  	rename_column :recipients, :householdSize, :household_size
		rename_column :recipients, :publicNote, :public_note
  	rename_column :recipients, :privateNote, :private_note
  end
end

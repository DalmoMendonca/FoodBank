class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.datetime :date
      t.text :note
      t.string :action

      t.timestamps null: false
    end
  end
end

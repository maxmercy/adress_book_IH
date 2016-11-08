class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :adress
      t.string :phonenumber
      t.string :email

      t.timestamps
    end
  end
end

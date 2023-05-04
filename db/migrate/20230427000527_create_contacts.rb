class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "e-mail"
      t.integer "company_id"

      t.timestamps
    end
  end
end

class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t| #t.string 'COL' creates column COL of string type
      t.string "name" #"Name" is name of column.
      t.string "city"
      t.string "state"
      t.string "url"

      t.timestamps
    end
  end
end

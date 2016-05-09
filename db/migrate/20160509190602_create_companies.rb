class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.integer :kind
      t.string :registry_number

      t.timestamps null: false
    end
  end
end

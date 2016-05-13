class CreateSeetings < ActiveRecord::Migration
  def change
    create_table :seetings do |t|
      t.integer :company_id, index: true, foreign_key: true
      t.string :person_kind
      t.string :person_name
      t.string :address
      t.string :zipcode
      t.string :neighborhood
      t.string :state
      t.string :city
      t.string :cpf_cnpj
      t.string :registry_number

      t.timestamps null: false
    end
  end
end

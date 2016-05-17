class CreateConsultingSteps < ActiveRecord::Migration
  def change
    create_table :consulting_steps do |t|
      t.references :consulting_kind
      t.string :name
      t.text :description
      t.timestamps null: false
    end
  end
end

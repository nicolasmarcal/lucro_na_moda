class CreateConsultingKinds < ActiveRecord::Migration
  def change
    create_table :consulting_kinds do |t|
      t.string :name
      t.integer :seeting_id

      t.timestamps null: false
    end
  end
end

class CreateTableConsultingKindsConsultingSteps < ActiveRecord::Migration
  def change
    create_table :table_consulting_kinds_consulting_steps do |t|
      t.integer :consulting_kind_id
      t.integer :consulting_step_id
    end
  end
end

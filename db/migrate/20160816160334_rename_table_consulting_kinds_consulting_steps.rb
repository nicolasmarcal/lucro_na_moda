class RenameTableConsultingKindsConsultingSteps < ActiveRecord::Migration
  def change
    rename_table :table_consulting_kinds_consulting_steps, :consulting_kinds_steps
  end
end

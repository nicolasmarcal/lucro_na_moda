class RemovingConsultingKindIdFromConsultingSteps < ActiveRecord::Migration
  def change
    remove_column :consulting_steps, :consulting_kind_id
  end
end

class AddSeetingIdToConsultingSteps < ActiveRecord::Migration
  def change
    add_column :consulting_steps, :seeting_id, :integer
  end
end

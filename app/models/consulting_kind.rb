class ConsultingKind < ActiveRecord::Base
  belongs_to :seeting
  has_and_belongs_to_many :consulting_steps
end

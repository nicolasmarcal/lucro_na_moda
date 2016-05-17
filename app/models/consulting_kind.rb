class ConsultingKind < ActiveRecord::Base
  belongs_to :seeting
  has_many :consulting_steps
end

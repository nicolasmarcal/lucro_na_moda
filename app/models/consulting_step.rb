class ConsultingStep < ActiveRecord::Base
  validates_presence_of :name, :seeting_id
  has_and_belongs_to_many :consulting_kinds
end

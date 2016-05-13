class Seeting < ActiveRecord::Base
  enum kind: { pf: 1,
              pj: 2 }
  validates_presence_of :person_kind, :person_name, :zipcode, :address, :neighborhood, :state, :city, :cpf_cnpj
  belongs_to :company
end

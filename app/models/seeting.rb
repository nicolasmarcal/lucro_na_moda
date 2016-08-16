class Seeting < ActiveRecord::Base
  require "cpf_cnpj"

  enum kind: { pf: 1,
              pj: 2 }
  validates_presence_of :person_kind, :person_name, :zipcode, :address, :neighborhood, :state, :city, :cpf_cnpj
  validate :cpf_cnpj_validation

  belongs_to :company
  has_many :consulting_kinds
  has_many :consulting_steps

  private

  def cpf_cnpj_validation
    errors.add(:cpf_cnpj, :invalid) if !cpf_cnpj_valid?
  end

  def cpf_cnpj_valid?
    CPF.valid?(cpf_cnpj) || CNPJ.valid?(cpf_cnpj)
  end
end

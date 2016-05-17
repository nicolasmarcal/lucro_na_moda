class Admin::ConsultingKindsController < ApplicationController


  private

  def permitted_params
    params.require(:consulting_kind).permit(:company_id, :person_kind, :person_name, :address, :zipcode, :neighborhood, :state, :city, :cpf_cnpj, :registry_number)
  end
end
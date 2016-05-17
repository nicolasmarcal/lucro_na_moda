class Admin::SeetingsController < InheritedResources::Base

  def new
    @seeting = Seeting.new(company_id: @current_company.id)
  end

  def update
    update! do |success, failure|
      success.html { redirect_to edit_adimin_seeting(@seeting) }
    end
  end

  def create
    @seeting = Seeting.new(permitted_params.merge(company_id: @current_company.id))

    if @seeting.save
      redirect_to edit_admin_seeting_path(@seeting)
    else
      render :edit
    end
  end

  private

  def permitted_params
    params.require(:seeting).permit(:company_id, :person_kind, :person_name, :address, :zipcode, :neighborhood, :state, :city, :cpf_cnpj, :registry_number)
  end
end
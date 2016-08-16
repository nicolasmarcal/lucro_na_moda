class Admin::ConsultingKindsController < InheritedResources::Base

  before_filter :seeting

  def new
    @consulting_kind = ConsultingKind.new
  end

  def create
    @consulting_kind = seeting.consulting_kinds.new(permitted_params)

    if @consulting_kind.save
      redirect_to edit_admin_seeting_path(seeting)
    else
      render :new
    end
  end

  def edit
    @consulting_kind = ConsultingKind.find(params[:id])
  end

  def update
    @consulting_kind = ConsultingKind.find(params[:id])

    if @consulting_kind.update_attributes(permitted_params)
      redirect_to edit_admin_seeting_path(seeting)
    else
      render :new
    end
  end

  private

  def seeting
    @seeting ||= Seeting.find(params[:seeting_id])
  end

  def permitted_params
    params.require(:consulting_kind).permit(:name)
  end
end
class Admin::ConsultingStepsController < InheritedResources::Base

  before_filter :seeting

  def new
    @consulting_step = ConsultingStep.new
  end

  def create
    @consulting_step = seeting.consulting_steps.new(permitted_params)

    if @consulting_step.save
      redirect_to edit_admin_seeting_path(seeting)
    else
      render :new
    end
  end

  def edit
    @consulting_step = ConsultingStep.find(params[:id])
  end

  def update
    @consulting_step = ConsultingStep.find(params[:id])

    if @consulting_step.update_attributes(permitted_params)
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
    params.require(:consulting_step).permit(:name, :description)
  end
end
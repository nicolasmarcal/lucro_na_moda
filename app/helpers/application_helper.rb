module ApplicationHelper
  def seeting_link
    if @current_company.seeting.present?
      link_to "Configurações", edit_admin_seeting_path(@current_company.seeting)
    else
      link_to "Configurações", new_admin_seeting_path
    end
  end

  def bootstrap_class_for flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-error"
      when :alert
        "alert-block"
      when :notice
        "alert-info"
      else
        flash_type.to_s
    end
  end
end

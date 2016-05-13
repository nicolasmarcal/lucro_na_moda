class Admin::UsersController < InheritedResources::Base

  def update
    update! do |success, failure|
      success.html { redirect_to admin_users_path }
    end
  end

  private

  def permitted_params
    params.permit(:user => [:name, :email, :password, :password_confirmation])
  end
end
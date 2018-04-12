class AdminController < ApplicationController
  before_action :authorize
  before_action :authenticate_user!  


  def index
    @users = User.all
  end

  def supervisor    
    remove_last_role
    @user.add_role(:supervisor)
    redirect_to '/admin', notice: 'Role Supervisor was successfully updated.'
  end

  def operator    
    remove_last_role
    @user.add_role(:operator)
    redirect_to '/admin', notice: 'Role Operator was successfully updated.'
  end
  

  private

  def authorize
    if !current_user.has_role? :admin      
      redirect_to root_url
    end
  end

  def remove_last_role
    @user = User.find(params[:id])
    @user.roles = []
  end
  
  
end

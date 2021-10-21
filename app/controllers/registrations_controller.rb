class RegistrationsController < Devise::RegistrationsController
  # protected

  # def after_inactive_sign_up_path_for(resource)
  #   '/users/sign_in'
  # end

  def new
    super
  end

  def create
    @user = User.new(user_params)
    if @user.save 
      session[:user_id] = @user.id 
      flash[:notice] = "thank you for signing up! you are logged in"
      redirect_to root_path
    else
      render :new
    end    
  end

  def update
    super
  end

  private 
  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end  
end

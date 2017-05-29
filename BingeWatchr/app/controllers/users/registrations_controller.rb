class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
   def new
     #@user_id = current_user.id
    super
   end


  def new0
    @users = User.new
    @pid = current_user.id
  end

  # GET /users/edit_user/<id>
  def edit0
    @user = User.find(params[:id])
  end

  def profile

    MailerMailer.mail1(current_user)
    if user_signed_in?
      @users1 = User.where(parent_id: current_user.id).all
      if current_user.admin
        @users2 = User.all
      end
    end

  end

  def create_son
    # @user = User.new(email: params[:email], password: params[:password], parent_id: params[:parent_id])
    # if @user.save
    #   flash[:success] = "Usuario creado!"
    #   redirect_to root
    # end
    if current_user.parent_id != nil or current_user.admin
      @user = User.create(email: params[:email], password: params[:password], parent_id: params[:parent_id])
    end
  end

  # POST /users/delete_user
  def delete_user
    if current_user.id == params[:id] or current_user.admin
      User.find(params[:id]).destroy
    end
  end

  # POST /users/edit_user
  def edit_user
    if current_user.id == params[:id] or current_user.admin
      @user = User.find(params[:id]).destroy
      User.create(email: params[:email], password: params[:password], parent_id: params[:parent_id])
    end
  end

  # POST /create_admin
  def create_admin
    if current_user.admin
      User.create(email: params[:email], password: params[:password], admin: 1)
    end
  end






  # POST /resource
  def create
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :password, :admin, :parent_id, :id])
  end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
   super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end
end

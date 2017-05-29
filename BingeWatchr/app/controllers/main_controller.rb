class MainController < ApplicationController

  before_action authenticate_user!

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



end

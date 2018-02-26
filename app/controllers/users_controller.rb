class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def country
    @users = User.where(country: params[:country])
  end



  def show
    @user = User.find_by(id: params[:id])
  end
  def new

  end
  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      country: params[:country],
      introduction: params[:introduction]
    )
    @user.save
    redirect_to("/users/index")

  end

  def login_form

  end

  def login
    @user = User.find_by(email: params[:email],
    password: params[:password])
    if @user
      session[:user_id] = @user.id
      redirect_to("/users/index")
    else
      render("users/login_form")
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to("/home/top")
  end

end

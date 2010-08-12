class UsersController < ApplicationController
  
  def new
    @user = User.new
    @title = "Registrieren"
  end
  
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
      flash[:success] = "Registrierung erfolgreich!"
    else
      @title = "Registrieren"
      render 'new'
    end
  end

end

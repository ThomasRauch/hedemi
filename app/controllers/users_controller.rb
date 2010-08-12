class UsersController < ApplicationController
  
  def new
    @title = "Registrieren"
  end
  
  def show
    @user = User.find(params[:id])
  end

end

class UsersController < ApplicationController


    def new
    end

    def create
        user = User.new(user_params)
        # What the below is saying is once a user session is created successfully
        # it redirects users to login. I want to change this later to
        # direct_to the users_show page.
    if user.save
      session[:user_id] = user.id
      redirect_to '/login'
    else
      flash[:error] = "There was a problem signing in, please try again later."
      redirect_to '/users/new'
    end
  end

    def show
    end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end

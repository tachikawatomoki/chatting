class UserController < ApplicationController
  def index
  	@users=User.all
  end

  def show
  	@user=User.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  	user=User.new(user_params)
  	user.save
  	redirect_to users_path
  end

  private
  def user_params
  	params.require(:user).permit(:body)
  end
end

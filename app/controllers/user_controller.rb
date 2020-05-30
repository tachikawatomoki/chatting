class UserController < ApplicationController
  def index
  	@users=User.all
  end

  def show
  	@user=User.find(params[:id])
  end

  def new
  	@user=User.new
  end

  def edit
  	@user=User.find(params[:id])
  	p @user
  	p 11111
  end

  def create
  	
  	 @user=User.new(user_params)
  	@user_id = current_user.id
  	@user.save
  	redirect_to user_index_path
  end
  def update
	@user=User.find(params[:id])
  	p params
  	# @user.title=user_params
  	@user.update(title: params[:user][:title])
  	redirect_to user_index_path
 
  end

  private
  def user_params
  	params.require(:user).permit(:title)
  end
end

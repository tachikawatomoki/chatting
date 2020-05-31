class UserController < ApplicationController
  def index
  	@user=User.all
    if params[:search].present?
		@users = User.where(name: params[:search])
	else
		@users=User.all
	end
  end

  def show
  	@user=User.find(params[:id])
  	@opinions = @user.post_images.page(params[:page]).reverse_order
  end

  def new
  	@user=User.new
  end

  def edit
  	@user=User.find(params[:id])
  end

  def create
  	 @user=User.new(user_params)
  	@user_id = current_user.id
  	@user.save
  	redirect_to user_index_path
  end

  def update
	@user=User.find(params[:id])
  	# @user.title=user_params
  	@user.update(user_params)
  	redirect_to user_index_path
  end

  private
  def user_params
  	params.require(:user).permit(:title, :image)
  end
end

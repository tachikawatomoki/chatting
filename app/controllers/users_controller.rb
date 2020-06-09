class UsersController < ApplicationController
	def index

		if params[:search].present?
			@users = User.where(name: params[:search])
		else
			@users=User.all
		end
	end

 def my_index
    # @opinions=current_user
    @opinions=Opinion.where(user_id: current_user.id)
 end
  
  def show
  	@user=User.find(params[:id])
    # @opinions = @user.opinions.page(params[:page]).reverse_order
   @opinions=Opinion.where(user_id: @user.id)
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
  	redirect_to users_path
  end

  private
  def user_params
  	  params.require(:user).permit(:title, :image)
  end
end

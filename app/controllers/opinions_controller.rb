class OpinionsController < ApplicationController
  def index
  	@opinions=Opinion.all
  	@users=User.all
  end

  def show
  	@opinion=Opinion.find(params[:id])
  end

  def new
  	@opinion=Opinion.new
  end

  def edit
  	@opinion=Opinion.find(params[:id])
  end

  def create
        @opinion = Opinion.new(opinion_params)
        @opinion.user_id = current_user.id
        @opinion.save
        redirect_to opinions_path
  end

  def update
    @opinin = Opinion.find(params[:id])
    @opinion.update(opinion_params)
    redirect_to opinions_path
  end

  private
  def opinion_params
      params.require(:opinion).permit(:title, :body, :image)
  end
end

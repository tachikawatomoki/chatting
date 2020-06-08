class MyopinionsController < ApplicationController
  def index
  end

  def show
  	@opinions=Opinion.where(user_id: @user.id)
  end

  def new
  end

  def edit
  end
end

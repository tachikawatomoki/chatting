class MyopinionsController < ApplicationController
  def index
  	@opinions=Opinion.where(user_id: @user.id)
  end

  def show

  end

  def new
  end

  def edit
  end
end

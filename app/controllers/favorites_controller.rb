class FavoritesController < ApplicationController
	def create
            opinion = Opinion.find(params[:opinion_id])
            favorite = current_user.favorites.new(opinion_id: opinion.id)
            favorite.save
            redirect_to opinions_path
        end
        def destroy
            opinion = Opinion.find(params[:opinion_id])
            favorite = current_user.favorites.find_by(opinion_id: opinion.id)
            favorite.destroy
            redirect_to opinions_path
        end
end

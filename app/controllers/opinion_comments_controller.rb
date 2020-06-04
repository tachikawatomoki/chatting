class OpinionCommentsController < ApplicationController
	def create
    opinion = Opinion.find(params[:opinion_id])
    comment = current_user.opinion_comments.new(opinion_comment_params)
    comment.opinion_id = opinion.id
    comment.save!
    redirect_to opinion_path(opinion.id)
end

	def destroy
	OpinionComment.find_by(id: params[:id], opinion_id: params[:opinion_id]).destroy
    redirect_to opinions_path(params[:opinion_id])
	end
private
def opinion_comment_params
    params.require(:opinion_comment).permit(:comment)
end
end

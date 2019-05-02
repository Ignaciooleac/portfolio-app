class CommentsController < ApplicationController
    def new
        @comment = Comment.new
    end

    def show
        @comment = Comment.find(params[:id])
    end
end

class PostsController < ApplicationController
    before_action :authenticate_user!

    def new
        @post = Post.new
    end

    def create
        hash = post_params
        tags = hash.delete(:tag_ids)
        tag_ids = tags.reject(&:empty?).map{ | tag |{tag_id: tag}}
        hash = hash.merge(post_tags_attributes: tag_ids)
        @post = Post.new(hash)
        @post.user_id = current_user.id
        if @post.save
            flash[:notice] = "Post was successfully created"
            redirect_to post_path(@post)
        else
            render 'new'
        end
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end
    

    def update

        
        @post = Post.find(params[:id])
        if @post.update(post_params)
            flash[:notice] = "Post was updated"
            redirect_to post_path(@post)
        else
            flash[:notice] = "Post was not updated"
            render 'edit'
        end
    end

    def index
        @posts = Post.all
    end

    private
    def post_params
        params.require(:post).permit(:title, :description, :category_id, tag_ids: [], images: [])
    end       
end

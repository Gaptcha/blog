class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.build(comment_create_params)
        if @comment.save
            redirect_to @post
        else
            render 'posts/show', status: :unprocessable_entity
        end    
    end

    def comment_create_params
        params.require(:comment).permit(:commenter, :body)
    end
end
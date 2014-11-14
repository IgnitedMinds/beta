class CommentsController < ApplicationController
        
        def comment_params
		  params.require(:comment).permit(
		  	:comment, 
		  	:user_id,
		  	:body,
		  	:content,
		  	:post,	
		  	)
		end
		
		
 		def create
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create(comment_params)
                redirect_to @post
        end


end

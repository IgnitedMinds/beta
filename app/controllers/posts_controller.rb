class PostsController < InheritedResources::Base
  load_and_authorize_resource :post

  def create
    @post.user = current_user
    create! { posts_path }
  end

  private
    def permitted_params
      params.permit(post: [:content, :user_id, :body, :comment, :postimg])
    end
end

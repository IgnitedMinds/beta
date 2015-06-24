class ArticlesController < AuthController
  inherit_resources
  actions :index, :show
  has_scope :has_tag
end

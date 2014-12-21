class ArticlesController < InheritedResources::Base
  actions :index, :show
  has_scope :has_tag




end

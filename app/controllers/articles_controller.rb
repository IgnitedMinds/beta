class ArticlesController < InheritedResources::Base
  before_action :set_article, only: [:show]
  actions :index, :show
  has_scope :has_tag




end

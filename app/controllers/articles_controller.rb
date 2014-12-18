class ArticlesController < InheritedResources::Base
  actions :index
  has_scope :has_tag
end

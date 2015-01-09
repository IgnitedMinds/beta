class PeopleController < InheritedResources::Base
  defaults resource_class: User, collection_name: 'users', instance_name: 'user'
  actions :index
  has_scope :by_name
  has_scope :has_skill
  has_scope :by_skill_or_location
end

class Article < ActiveRecord::Base
  belongs_to :user

  scope :has_tag, ->(tag) { where(tag: tag) }

  has_attached_file :background
  validates_attachment_content_type :background, :content_type => /\Aimage\/.*\Z/

  has_attached_file :thumbnail, :styles => { :thumb => "400x300" }
  validates_attachment_content_type :thumbnail, :content_type => /\Aimage\/.*\Z/

  has_attached_file :header, :styles => { :full => "1200x400" }
  validates_attachment_content_type :header, :content_type => /\Aimage\/.*\Z/

  has_attached_file :body1, :styles => { :full => "1200x650" }
  validates_attachment_content_type :body1, :content_type => /\Aimage\/.*\Z/

  default_scope {order('created_at DESC')}
end

class Post < ActiveRecord::Base

	has_attached_file :postimg
	validates_attachment_content_type :postimg, :content_type => /\Aimage\/.*\Z/

belongs_to :user
has_many :comments

end

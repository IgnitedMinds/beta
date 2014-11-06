class Article < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "512x512>", :thumb => "128x128>" }, :default_url => "/articles/:style/missing.png"
  validates_attachment :avatar, :presence => true,
                                :content_type => { :content_type => ["image/jpg", "image/gif", "image/png"] },
                                :size => { :in => 0..512.kilobytes }
end
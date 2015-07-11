class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => {:thumb => '100x100#' }, :default_url => "http://www.ignitedminds.co.uk/images/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_attached_file :backgroundimg, :default_url => "http://www.ignitedminds.co.uk/images/profile-bg.jpg"
  validates_attachment_content_type :backgroundimg, :content_type => /\Aimage\/.*\Z/

  validates :user_name, uniqueness: true, presence: true

  has_many :posts
  has_many :comments
  has_many :articles
  has_many :ideas

  accepts_nested_attributes_for :ideas

  scope :by_name, ->(name) { where("lower(first_name) LIKE lower(?) or lower(last_name) LIKE lower(?) or lower(first_name || ' ' || last_name) LIKE lower(?)", name, name, name)}
  scope :has_skill, ->(skill) { tagged_with(skill, on: :skill) }

  scope :by_skill_or_location, ->(thing) {tagged_with(thing)}

  acts_as_taggable
  acts_as_taggable_on :skill, :location

  def avatar_url
  	avatar.url(:thumb)
  end

  def full_name
  	first_name + " " + last_name
  end
end

class Page < ActiveRecord::Base
validates :title, :body,:permalink,:created_at,:presence => true
validates :title, :uniqueness => true
default_scope :order => 'title ASC'
#validates :created_at
has_many :comments 
end

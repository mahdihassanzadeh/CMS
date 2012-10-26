class Commenter < ActiveRecord::Base
  has_many :comments
  belongs_to :page
end

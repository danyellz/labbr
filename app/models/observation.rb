class Observation < ActiveRecord::Base
	belongs_to :user
	belongs_to :experiment
	has_many :comments, as: :commentable
end

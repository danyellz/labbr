class Experiment < ActiveRecord::Base
	belongs_to :user
	belongs_to :proposal
	has_many :observations, dependent: :destroy
	has_many :comments, as: :commentable, dependent: :destroy
end

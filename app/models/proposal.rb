class Proposal < ActiveRecord::Base
	belongs_to :user
	has_many :experiments, dependent: :destroy
	has_many :comments, as: :commentable, dependent: :destroy
end

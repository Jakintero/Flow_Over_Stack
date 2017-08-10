class Answer < ApplicationRecord
	belongs_to :question
	belongs_to :user
	has_many :comments, :as => :apodo_comments
	has_many :votes, :as => :apodo_votes
end

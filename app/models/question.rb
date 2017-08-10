class Question < ApplicationRecord
	belongs_to :user
	has_many :votes 
	has_many :answers
	has_many :comments, :as => :apodo_comments
	has_many :votes, :as => :apodo_votes
end

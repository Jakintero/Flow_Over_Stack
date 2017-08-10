class Vote < ApplicationRecord
	belongs_to :question
	belongs_to :answer
	belongs_to :user
	belongs_to :apodo_votes, :polymorphic => true
end

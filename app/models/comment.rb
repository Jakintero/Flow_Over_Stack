class Comment < ApplicationRecord
	belongs_to :answer, :question, :user
	belongs_to :apodo_comments, :polymorphic => true
end

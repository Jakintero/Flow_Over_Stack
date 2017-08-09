class Comment < ApplicationRecord
	belongs_to :answer, :question
	belongs_to :apodo_comments, :polymorphic => true
end

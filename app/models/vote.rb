class Vote < ApplicationRecord
	belongs_to :apodo_votes, :polymorphic => true
end

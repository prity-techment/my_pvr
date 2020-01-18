class Favorite < ApplicationRecord
	belongs_to :user
	belongs_to :show
	belongs_to :channel
end

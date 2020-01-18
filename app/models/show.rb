class Show < ApplicationRecord
	has_many :channel_shows
  	has_many :channels, through: :channel_shows
end

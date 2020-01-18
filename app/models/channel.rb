class Channel < ApplicationRecord
	has_many :channel_shows
  	has_many :shows, through: :channel_shows
end

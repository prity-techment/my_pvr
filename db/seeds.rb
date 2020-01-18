# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

channel_shows = {'Star World': ['Koffee With Karan', 'I shouldnt be alive'], 'Star Gold': ['Junglee', 'Life of pi'],
                 'Colors': ['Bigg boss', 'Comedy Club'], 'Sony': ['KBC']}

channel_shows.each do |channel, shows|
	channel = Channel.create(name: channel, language: 'Hindi')
	shows.each do |show_name|
	  show = Show.create(title: show_name)
	  ChannelShow.create(channel_id: channel.id, show_id: show.id)
	end
end

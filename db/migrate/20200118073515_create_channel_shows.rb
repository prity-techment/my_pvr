class CreateChannelShows < ActiveRecord::Migration[5.2]
  def change
    create_table :channel_shows do |t|
      t.references :channel
      t.references :show
      
      t.timestamps
    end
  end
end

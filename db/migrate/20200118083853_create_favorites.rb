class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user
      t.references :show
      t.references :channel
      t.timestamps
    end
  end
end

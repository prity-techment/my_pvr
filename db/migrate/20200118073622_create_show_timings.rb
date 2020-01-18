class CreateShowTimings < ActiveRecord::Migration[5.2]
  def change
    create_table :show_timings do |t|
      t.string :day
      t.references :channel
      t.references :show_timings
      t.time :time
      t.timestamps
    end
  end
end

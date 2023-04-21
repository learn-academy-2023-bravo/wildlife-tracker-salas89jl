class CreateSigthings < ActiveRecord::Migration[7.0]
  def change
    create_table :sigthings do |t|
      t.string :latitude
      t.string :longitude
      t.integer :date
      t.integer :wildlife_tracker_id

      t.timestamps
    end
  end
end

class CreateTrails < ActiveRecord::Migration
  def change
    create_table :trails do |t|
      t.string :name
      t.integer :topics_count, :integer, default: 0

      t.timestamps
    end
  end
end

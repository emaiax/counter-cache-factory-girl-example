class CreateTopicsTrails < ActiveRecord::Migration
  def change
    create_table :topics_trails do |t|
      t.references :topic, index: true
      t.references :trail, index: true

      t.timestamps
    end
  end
end

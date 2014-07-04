class CreateGraffitis < ActiveRecord::Migration
  def change
    create_table :graffitis do |t|
      t.text :description
      t.datetime :discovered_at, :include_blank => true
      t.datetime :painted_at, :include_blank => true
      t.datetime :buffed_at, :include_blank => true
      t.timestamps
    end
  end
end

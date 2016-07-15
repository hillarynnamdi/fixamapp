class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :place
      t.references :area, index: true, foreign_key: true
      t.references :city, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

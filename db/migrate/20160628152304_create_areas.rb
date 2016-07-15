class CreateAreas < ActiveRecord::Migration
  def change
    create_table :areas do |t|
      t.string :area
      t.references :city, index: true, foreign_key: true
      t.references :state, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

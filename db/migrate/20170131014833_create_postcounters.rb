class CreatePostcounters < ActiveRecord::Migration
  def change
    create_table :postcounters do |t|
      t.string :ip_address
      t.references :blog, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

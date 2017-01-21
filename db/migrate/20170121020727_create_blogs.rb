class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :url
      t.string :image
      t.text :post
      t.text :title
      t.string :author
      t.string :image2
      t.string :image3
      t.string :image4

      t.timestamps null: false
    end
  end
end

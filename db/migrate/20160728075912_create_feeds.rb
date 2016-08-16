class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :name
      t.string :email
      t.string :mobile_no
      t.string :message

      t.timestamps null: false
    end
  end
end

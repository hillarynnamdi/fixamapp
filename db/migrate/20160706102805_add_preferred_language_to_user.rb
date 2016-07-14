class AddPreferredLanguageToUser < ActiveRecord::Migration
  def change
  	add_column :users, :preferred_language, :string
  	add_column :users, :location, :string
  	add_column :users, :profile_icon, :string
  end
end

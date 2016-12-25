class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :description, :text #This line is to add column to the table
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  end
end

class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title #This line is to add the title column to the table
    end
  end
end

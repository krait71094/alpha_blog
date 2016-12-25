class Article < ActiveRecord::Base
   validates :title, presence:true, length: {minimum: 3, maximum: 50} #This is line is to make sure that the title column must be filled to the database
   validates :description, presence:true, length: {minimum: 10, maximum: 300}
end
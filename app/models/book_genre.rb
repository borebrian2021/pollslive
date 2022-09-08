class Book_genre < ActiveRecord::Base
    has_many :books
    
end
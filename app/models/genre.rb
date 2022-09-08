class Genre < ActiveRecord::Base  
    belongs_to :books
end
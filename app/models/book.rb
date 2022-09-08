class Book < ActiveRecord::Base
    has_many: customers 
    has_many: purchases
end
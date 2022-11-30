class Pizza < ApplicationRecord
    has_many :restaurants
    has_many :pizzas, through: :restaurant_pizza

   
end

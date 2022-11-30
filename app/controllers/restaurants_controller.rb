class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def index
        restaurants = Restaurant.all
        render json: restaurants
    end

    def show
        restaurant = Restaurant.find!(params[:id])
        render json: restaurant, serializer: SingleRestaurantPizzaSerializer, status: :ok
    end

    def destroy
        restaurant = Restaurant.find!(params[:id])
        restaurant.destroy
        head :no_content
    end

    private 
    def not_found 
       render json: {error: "Restaurant not found"}, status: :not_found
    end

end

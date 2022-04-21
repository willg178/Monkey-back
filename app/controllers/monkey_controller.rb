class MonkeyController < ApplicationController
    def index
        @monkeys = Monkey.all
        render :index
    end

    def create
        @monkey = Monkey.new(
            name: params["name"],
            location: params["location"],
            population: params["population"],
            description: params["description"],
            facts: params["facts"],
            size: params["size"],
            weight: params["weight"]
        )
        if 
          @monkey.save
         render template: "monkey/show"
        else 
          render json: { errors: @monkey.errors.full_messages }, status: 422
        end
    end

    def show
        monkey_id = params[:id]
        @monkey = Monkey.find_by(id: monkey_id)
        render template: "monkey/show"
    end

    def update
        monkey_id = params[:id]
        @monkey = Monkey.find_by(id: monkey_id)
    
        @monkey.name = params["name"] || @monkey.name
        @monkey.location = params["location"] || @monkey.location
        @monkey.population = params["population"] || @monkey.population
        @monkey.description = params["description"] || @monkey.description
        @monkey.facts = params["facts"] || @monkey.facts
        @monkey.size = params["size"] || @monkey.size
        @monkey.weight = params["weight"] || @monkey.weight
       
    
        @monkey.save
        render template: "monkey/show"
    end

    def destroy
        monkey_id = params[:id]
        monkey = Monkey.find_by(id: monkey_id)
        monkey.destroy
        render json: {message: "Monkey successfully destroyed!"}
    end
end

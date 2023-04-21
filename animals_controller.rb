class AnimalsController < ApplicationController

    def index
        animals = Animal.all
        render json: animals
    end 

    def show
        animal = Animal.find(params[:id])
        render json: animal
    end

    def create    
        animal = Animal.create(animal_params)
        if animal.valid?
            render json: animal
        else
            render json: animal.errors
        end
    end

    def 
    private

    def animal_params
        params.require(:animal).permit(:name,:binomial)
    end
end
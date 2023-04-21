class SigthingsController < ApplicationController

    def index
        sightings = Sigthing.where(date: params[:start_date]..params[:end_date])
        render json: sightings
    end 

    def show
        sigthing = Sigthing.find(params[:id])
        render json: sigthing
    end

    def create    
        sigthing = Sigthing.create(sigthing_params)
        if sigthing.valid?
            render json: sigthing
        else
            render json: sigthing.errors
        end
    end

    def update
        sigthing = Sigthing.find(params[:id])
        sigthing.update(sigthing_params) 
        if sigthing.valid?
            render json: sigthing
        else
            render json: sigthing.errors
        end
    end

    def destroy
        sigthing = Sighting.find(params[:id])
        if sigthing.destroy   
            render json: sigthing
        else 
            render json: sigthing.errors
        end
    end


    private

    def sigthing_params
        params.require(:sigthing).permit(:latitude,:longitude,:date,:wildlife_tracker_id,:start_date, :end_date)
    end
end


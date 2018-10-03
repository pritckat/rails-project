class TeamCompositionsController < ApplicationController

    def index
        @comps = TeamComposition.all
    end

    def show
        @comp = TeamComposition.find(params[:id])
    end

    def new
        @comp = TeamComposition.new
    end

    def create
        @comp = TeamComposition.create(comp_params)
        redirect_to team_composition_path(@comp)
    end

    private

    def comp_params
        params.require(:team_composition).permit(:notes, :name)
    end
end

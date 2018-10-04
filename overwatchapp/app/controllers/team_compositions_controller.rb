class TeamCompositionsController < ApplicationController

    def index
        @comps = TeamComposition.all
    end

    def show
        @comp = TeamComposition.find(params[:id])
    end

    def new
        @comp = TeamComposition.new
        @team = Team.find(params[:team_id])
        @chars = Character.all
    end

    def create
        @comp = TeamComposition.create(comp_params)
        @comp.team = Team.find(params[:team_id])
        params[:team_composition][:characters].each do |id|
            id = id.to_i
            char = Character.find_by_id(id)
            @comp.characters << char     
        end
        if @comp.save
            redirect_to team_composition_path(@comp)
        else
            render new_team_composition_path
        end
    end

    private

    def comp_params
        params.require(:team_composition).permit(:notes, :name)
    end
end

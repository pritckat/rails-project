class TeamsController < ApplicationController

    def index
        @teams = Team.all 
    end

    def show
        @team = Team.find(params[:id])
    end

    def new
        @team = Team.new
        @user = User.find(params[:user_id])
        @users = User.all
    end

    def create
        @team = Team.create(team_params)
        @user = User.find(params[:user_id])
        if @team.save
            redirect_to team_path(@team)
        else
            render new_team_path
        end
    end

    def edit
        @team = Team.find(params[:id])
    end

    def update
        @team = Team.find(params[:id])
        @team.update(team_params)
        redirect_to team_path(@team)
    end

    private

    def team_params
        params.require(:team).permit(:name, :user_ids => [])
    end
end

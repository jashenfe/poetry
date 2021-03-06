class TeamsController < ApplicationController
  def index
    @q = Team.ransack(params[:q])
    @teams = @q.result(:distinct => true).includes(:poets, :coaches, :school).page(params[:page]).per(10)

    render("team_templates/index.html.erb")
  end

  def show
    @coach = Coach.new
    @poet = Poet.new
    @team = Team.find(params.fetch("id_to_display"))

    render("team_templates/show.html.erb")
  end

  def new_form
    @team = Team.new

    render("team_templates/new_form.html.erb")
  end

  def create_row
    @team = Team.new

    @team.bout_id = params.fetch("bout_id")

    if @team.valid?
      @team.save

      redirect_back(:fallback_location => "/teams", :notice => "Team created successfully.")
    else
      render("team_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @team = Team.find(params.fetch("prefill_with_id"))

    render("team_templates/edit_form.html.erb")
  end

  def update_row
    @team = Team.find(params.fetch("id_to_modify"))

    @team.bout_id = params.fetch("bout_id")

    if @team.valid?
      @team.save

      redirect_to("/teams/#{@team.id}", :notice => "Team updated successfully.")
    else
      render("team_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @team = Team.find(params.fetch("id_to_remove"))

    @team.destroy

    redirect_to("/teams", :notice => "Team deleted successfully.")
  end
end

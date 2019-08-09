class PoetsController < ApplicationController
  def index
    @poets = Poet.all

    render("poet_templates/index.html.erb")
  end

  def show
    @poet = Poet.find(params.fetch("id_to_display"))

    render("poet_templates/show.html.erb")
  end

  def new_form
    @poet = Poet.new

    render("poet_templates/new_form.html.erb")
  end

  def create_row
    @poet = Poet.new

    @poet.team_id = params.fetch("team_id")

    if @poet.valid?
      @poet.save

      redirect_back(:fallback_location => "/poets", :notice => "Poet created successfully.")
    else
      render("poet_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @poet = Poet.find(params.fetch("prefill_with_id"))

    render("poet_templates/edit_form.html.erb")
  end

  def update_row
    @poet = Poet.find(params.fetch("id_to_modify"))

    @poet.team_id = params.fetch("team_id")

    if @poet.valid?
      @poet.save

      redirect_to("/poets/#{@poet.id}", :notice => "Poet updated successfully.")
    else
      render("poet_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row_from_team
    @poet = Poet.find(params.fetch("id_to_remove"))

    @poet.destroy

    redirect_to("/teams/#{@poet.team_id}", notice: "Poet deleted successfully.")
  end

  def destroy_row
    @poet = Poet.find(params.fetch("id_to_remove"))

    @poet.destroy

    redirect_to("/poets", :notice => "Poet deleted successfully.")
  end
end

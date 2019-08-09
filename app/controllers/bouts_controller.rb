class BoutsController < ApplicationController
  def index
    @bouts = Bout.page(params[:page]).per(10)

    render("bout_templates/index.html.erb")
  end

  def show
    @bout = Bout.find(params.fetch("id_to_display"))

    render("bout_templates/show.html.erb")
  end

  def new_form
    @bout = Bout.new

    render("bout_templates/new_form.html.erb")
  end

  def create_row
    @bout = Bout.new

    @bout.score_1 = params.fetch("score_1")
    @bout.score_2 = params.fetch("score_2")
    @bout.score_3 = params.fetch("score_3")
    @bout.score_4 = params.fetch("score_4")
    @bout.score_5 = params.fetch("score_5")
    @bout.team_id = params.fetch("team_id")

    if @bout.valid?
      @bout.save

      redirect_back(:fallback_location => "/bouts", :notice => "Bout created successfully.")
    else
      render("bout_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @bout = Bout.find(params.fetch("prefill_with_id"))

    render("bout_templates/edit_form.html.erb")
  end

  def update_row
    @bout = Bout.find(params.fetch("id_to_modify"))

    @bout.score_1 = params.fetch("score_1")
    @bout.score_2 = params.fetch("score_2")
    @bout.score_3 = params.fetch("score_3")
    @bout.score_4 = params.fetch("score_4")
    @bout.score_5 = params.fetch("score_5")
    @bout.team_id = params.fetch("team_id")

    if @bout.valid?
      @bout.save

      redirect_to("/bouts/#{@bout.id}", :notice => "Bout updated successfully.")
    else
      render("bout_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @bout = Bout.find(params.fetch("id_to_remove"))

    @bout.destroy

    redirect_to("/bouts", :notice => "Bout deleted successfully.")
  end
end

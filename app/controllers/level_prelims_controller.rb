class LevelPrelimsController < ApplicationController
  def index
    @level_prelims = LevelPrelim.all

    render("level_prelim_templates/index.html.erb")
  end

  def show
    @level_prelim = LevelPrelim.find(params.fetch("id_to_display"))

    render("level_prelim_templates/show.html.erb")
  end

  def new_form
    @level_prelim = LevelPrelim.new

    render("level_prelim_templates/new_form.html.erb")
  end

  def create_row
    @level_prelim = LevelPrelim.new

    @level_prelim.bout_id = params.fetch("bout_id")

    if @level_prelim.valid?
      @level_prelim.save

      redirect_back(:fallback_location => "/level_prelims", :notice => "Level prelim created successfully.")
    else
      render("level_prelim_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @level_prelim = LevelPrelim.find(params.fetch("prefill_with_id"))

    render("level_prelim_templates/edit_form.html.erb")
  end

  def update_row
    @level_prelim = LevelPrelim.find(params.fetch("id_to_modify"))

    @level_prelim.bout_id = params.fetch("bout_id")

    if @level_prelim.valid?
      @level_prelim.save

      redirect_to("/level_prelims/#{@level_prelim.id}", :notice => "Level prelim updated successfully.")
    else
      render("level_prelim_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @level_prelim = LevelPrelim.find(params.fetch("id_to_remove"))

    @level_prelim.destroy

    redirect_to("/level_prelims", :notice => "Level prelim deleted successfully.")
  end
end

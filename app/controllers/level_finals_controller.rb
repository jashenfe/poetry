class LevelFinalsController < ApplicationController
  def index
    @level_finals = LevelFinal.all

    render("level_final_templates/index.html.erb")
  end

  def show
    @level_final = LevelFinal.find(params.fetch("id_to_display"))

    render("level_final_templates/show.html.erb")
  end

  def new_form
    @level_final = LevelFinal.new

    render("level_final_templates/new_form.html.erb")
  end

  def create_row
    @level_final = LevelFinal.new


    if @level_final.valid?
      @level_final.save

      redirect_back(:fallback_location => "/level_finals", :notice => "Level final created successfully.")
    else
      render("level_final_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @level_final = LevelFinal.find(params.fetch("prefill_with_id"))

    render("level_final_templates/edit_form.html.erb")
  end

  def update_row
    @level_final = LevelFinal.find(params.fetch("id_to_modify"))


    if @level_final.valid?
      @level_final.save

      redirect_to("/level_finals/#{@level_final.id}", :notice => "Level final updated successfully.")
    else
      render("level_final_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @level_final = LevelFinal.find(params.fetch("id_to_remove"))

    @level_final.destroy

    redirect_to("/level_finals", :notice => "Level final deleted successfully.")
  end
end

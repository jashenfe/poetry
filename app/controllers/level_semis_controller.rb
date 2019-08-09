class LevelSemisController < ApplicationController
  def index
    @level_semis = LevelSemi.all

    render("level_semi_templates/index.html.erb")
  end

  def show
    @level_semi = LevelSemi.find(params.fetch("id_to_display"))

    render("level_semi_templates/show.html.erb")
  end

  def new_form
    @level_semi = LevelSemi.new

    render("level_semi_templates/new_form.html.erb")
  end

  def create_row
    @level_semi = LevelSemi.new


    if @level_semi.valid?
      @level_semi.save

      redirect_back(:fallback_location => "/level_semis", :notice => "Level semi created successfully.")
    else
      render("level_semi_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @level_semi = LevelSemi.find(params.fetch("prefill_with_id"))

    render("level_semi_templates/edit_form.html.erb")
  end

  def update_row
    @level_semi = LevelSemi.find(params.fetch("id_to_modify"))


    if @level_semi.valid?
      @level_semi.save

      redirect_to("/level_semis/#{@level_semi.id}", :notice => "Level semi updated successfully.")
    else
      render("level_semi_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @level_semi = LevelSemi.find(params.fetch("id_to_remove"))

    @level_semi.destroy

    redirect_to("/level_semis", :notice => "Level semi deleted successfully.")
  end
end

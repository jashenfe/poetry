class LevelQuartersController < ApplicationController
  def index
    @level_quarters = LevelQuarter.page(params[:page]).per(10)

    render("level_quarter_templates/index.html.erb")
  end

  def show
    @level_quarter = LevelQuarter.find(params.fetch("id_to_display"))

    render("level_quarter_templates/show.html.erb")
  end

  def new_form
    @level_quarter = LevelQuarter.new

    render("level_quarter_templates/new_form.html.erb")
  end

  def create_row
    @level_quarter = LevelQuarter.new


    if @level_quarter.valid?
      @level_quarter.save

      redirect_back(:fallback_location => "/level_quarters", :notice => "Level quarter created successfully.")
    else
      render("level_quarter_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @level_quarter = LevelQuarter.find(params.fetch("prefill_with_id"))

    render("level_quarter_templates/edit_form.html.erb")
  end

  def update_row
    @level_quarter = LevelQuarter.find(params.fetch("id_to_modify"))


    if @level_quarter.valid?
      @level_quarter.save

      redirect_to("/level_quarters/#{@level_quarter.id}", :notice => "Level quarter updated successfully.")
    else
      render("level_quarter_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @level_quarter = LevelQuarter.find(params.fetch("id_to_remove"))

    @level_quarter.destroy

    redirect_to("/level_quarters", :notice => "Level quarter deleted successfully.")
  end
end

class SchoolsController < ApplicationController
  def index
    @schools = School.all

    render("school_templates/index.html.erb")
  end

  def show
    @school = School.find(params.fetch("id_to_display"))

    render("school_templates/show.html.erb")
  end

  def new_form
    @school = School.new

    render("school_templates/new_form.html.erb")
  end

  def create_row
    @school = School.new

    @school.team_id = params.fetch("team_id")

    if @school.valid?
      @school.save

      redirect_back(:fallback_location => "/schools", :notice => "School created successfully.")
    else
      render("school_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @school = School.find(params.fetch("prefill_with_id"))

    render("school_templates/edit_form.html.erb")
  end

  def update_row
    @school = School.find(params.fetch("id_to_modify"))

    @school.team_id = params.fetch("team_id")

    if @school.valid?
      @school.save

      redirect_to("/schools/#{@school.id}", :notice => "School updated successfully.")
    else
      render("school_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @school = School.find(params.fetch("id_to_remove"))

    @school.destroy

    redirect_to("/schools", :notice => "School deleted successfully.")
  end
end

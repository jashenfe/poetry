Rails.application.routes.draw do
  # Routes for the Level semi resource:

  # CREATE
  get("/level_semis/new", { :controller => "level_semis", :action => "new_form" })
  post("/create_level_semi", { :controller => "level_semis", :action => "create_row" })

  # READ
  get("/level_semis", { :controller => "level_semis", :action => "index" })
  get("/level_semis/:id_to_display", { :controller => "level_semis", :action => "show" })

  # UPDATE
  get("/level_semis/:prefill_with_id/edit", { :controller => "level_semis", :action => "edit_form" })
  post("/update_level_semi/:id_to_modify", { :controller => "level_semis", :action => "update_row" })

  # DELETE
  get("/delete_level_semi/:id_to_remove", { :controller => "level_semis", :action => "destroy_row" })

  #------------------------------

  # Routes for the Level quarter resource:

  # CREATE
  get("/level_quarters/new", { :controller => "level_quarters", :action => "new_form" })
  post("/create_level_quarter", { :controller => "level_quarters", :action => "create_row" })

  # READ
  get("/level_quarters", { :controller => "level_quarters", :action => "index" })
  get("/level_quarters/:id_to_display", { :controller => "level_quarters", :action => "show" })

  # UPDATE
  get("/level_quarters/:prefill_with_id/edit", { :controller => "level_quarters", :action => "edit_form" })
  post("/update_level_quarter/:id_to_modify", { :controller => "level_quarters", :action => "update_row" })

  # DELETE
  get("/delete_level_quarter/:id_to_remove", { :controller => "level_quarters", :action => "destroy_row" })

  #------------------------------

  # Routes for the Level prelim resource:

  # CREATE
  get("/level_prelims/new", { :controller => "level_prelims", :action => "new_form" })
  post("/create_level_prelim", { :controller => "level_prelims", :action => "create_row" })

  # READ
  get("/level_prelims", { :controller => "level_prelims", :action => "index" })
  get("/level_prelims/:id_to_display", { :controller => "level_prelims", :action => "show" })

  # UPDATE
  get("/level_prelims/:prefill_with_id/edit", { :controller => "level_prelims", :action => "edit_form" })
  post("/update_level_prelim/:id_to_modify", { :controller => "level_prelims", :action => "update_row" })

  # DELETE
  get("/delete_level_prelim/:id_to_remove", { :controller => "level_prelims", :action => "destroy_row" })

  #------------------------------

  # Routes for the Coach resource:

  # CREATE
  get("/coaches/new", { :controller => "coaches", :action => "new_form" })
  post("/create_coach", { :controller => "coaches", :action => "create_row" })

  # READ
  get("/coaches", { :controller => "coaches", :action => "index" })
  get("/coaches/:id_to_display", { :controller => "coaches", :action => "show" })

  # UPDATE
  get("/coaches/:prefill_with_id/edit", { :controller => "coaches", :action => "edit_form" })
  post("/update_coach/:id_to_modify", { :controller => "coaches", :action => "update_row" })

  # DELETE
  get("/delete_coach/:id_to_remove", { :controller => "coaches", :action => "destroy_row" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

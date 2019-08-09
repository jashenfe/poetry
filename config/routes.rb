Rails.application.routes.draw do
  # Routes for the School resource:

  # CREATE
  get("/schools/new", { :controller => "schools", :action => "new_form" })
  post("/create_school", { :controller => "schools", :action => "create_row" })

  # READ
  get("/schools", { :controller => "schools", :action => "index" })
  get("/schools/:id_to_display", { :controller => "schools", :action => "show" })

  # UPDATE
  get("/schools/:prefill_with_id/edit", { :controller => "schools", :action => "edit_form" })
  post("/update_school/:id_to_modify", { :controller => "schools", :action => "update_row" })

  # DELETE
  get("/delete_school/:id_to_remove", { :controller => "schools", :action => "destroy_row" })

  #------------------------------

  # Routes for the Poet resource:

  # CREATE
  get("/poets/new", { :controller => "poets", :action => "new_form" })
  post("/create_poet", { :controller => "poets", :action => "create_row" })

  # READ
  get("/poets", { :controller => "poets", :action => "index" })
  get("/poets/:id_to_display", { :controller => "poets", :action => "show" })

  # UPDATE
  get("/poets/:prefill_with_id/edit", { :controller => "poets", :action => "edit_form" })
  post("/update_poet/:id_to_modify", { :controller => "poets", :action => "update_row" })

  # DELETE
  get("/delete_poet/:id_to_remove", { :controller => "poets", :action => "destroy_row" })

  #------------------------------

  # Routes for the Level final resource:

  # CREATE
  get("/level_finals/new", { :controller => "level_finals", :action => "new_form" })
  post("/create_level_final", { :controller => "level_finals", :action => "create_row" })

  # READ
  get("/level_finals", { :controller => "level_finals", :action => "index" })
  get("/level_finals/:id_to_display", { :controller => "level_finals", :action => "show" })

  # UPDATE
  get("/level_finals/:prefill_with_id/edit", { :controller => "level_finals", :action => "edit_form" })
  post("/update_level_final/:id_to_modify", { :controller => "level_finals", :action => "update_row" })

  # DELETE
  get("/delete_level_final/:id_to_remove", { :controller => "level_finals", :action => "destroy_row" })

  #------------------------------

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

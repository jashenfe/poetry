class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.integer :bout_id

      t.timestamps
    end
  end
end

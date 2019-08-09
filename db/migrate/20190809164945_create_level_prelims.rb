class CreateLevelPrelims < ActiveRecord::Migration[5.1]
  def change
    create_table :level_prelims do |t|
      t.integer :bout_id

      t.timestamps
    end
  end
end

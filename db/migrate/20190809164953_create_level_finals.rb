class CreateLevelFinals < ActiveRecord::Migration[5.1]
  def change
    create_table :level_finals do |t|

      t.timestamps
    end
  end
end

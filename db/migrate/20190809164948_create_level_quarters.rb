class CreateLevelQuarters < ActiveRecord::Migration[5.1]
  def change
    create_table :level_quarters do |t|

      t.timestamps
    end
  end
end

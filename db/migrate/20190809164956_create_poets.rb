class CreatePoets < ActiveRecord::Migration[5.1]
  def change
    create_table :poets do |t|
      t.integer :team_id

      t.timestamps
    end
  end
end

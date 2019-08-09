class CreateBouts < ActiveRecord::Migration[5.1]
  def change
    create_table :bouts do |t|
      t.integer :score_1
      t.integer :score_2
      t.integer :score_3
      t.integer :score_4
      t.integer :score_5
      t.integer :team_id

      t.timestamps
    end
  end
end

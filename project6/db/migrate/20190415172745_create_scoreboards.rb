class CreateScoreboards < ActiveRecord::Migration[5.2]
  def change
    create_table :scoreboards do |t|
      t.integer :user_id
      t.float :score
      t.string :comment

      t.timestamps
    end
  end
end
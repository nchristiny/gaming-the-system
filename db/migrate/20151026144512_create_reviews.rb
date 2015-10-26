class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :reviewer, null: false
      t.references :game, null: false
      t.string :title, null: false
      t.text :body, null: false
      t.integer :score, null: false
      t.timestamps null: false
    end
  end
end

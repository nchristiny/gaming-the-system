class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.references :game, null: false
      t.references :owner, null: false
      t.timestamps null: false
    end
  end
end

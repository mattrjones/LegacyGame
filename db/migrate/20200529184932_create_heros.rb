class CreateHeros < ActiveRecord::Migration[6.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :hp
      t.integer :attk_val
      t.integer :def_val
      t.integer :exp_total

      t.timestamps
    end
  end
end

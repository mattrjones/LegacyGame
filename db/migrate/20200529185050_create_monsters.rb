class CreateMonsters < ActiveRecord::Migration[6.0]
  def change
    create_table :monsters do |t|
      t.integer :hp
      t.integer :attk_val
      t.integer :def_val
      t.integer :exp_gain

      t.timestamps
    end
  end
end

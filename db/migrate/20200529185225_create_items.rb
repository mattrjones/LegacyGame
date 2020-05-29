class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :stat
      t.integer :bonus
      t.integer :hero_id
      t.string :name

      t.timestamps
    end
  end
end

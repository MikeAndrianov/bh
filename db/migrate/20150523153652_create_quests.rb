class CreateQuests < ActiveRecord::Migration
  def change
    create_table :quests do |t|
      t.string :name
      t.string :description
      t.integer :progress, default: 0

      t.timestamps
    end
  end
end

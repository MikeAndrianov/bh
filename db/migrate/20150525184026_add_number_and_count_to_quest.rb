class AddNumberAndCountToQuest < ActiveRecord::Migration
  def change
    add_column :quests, :number, :integer
    rename_column :quests, :progress, :count
  end
end

class AddCompanyToQuest < ActiveRecord::Migration
  def change
    add_reference :quests, :company, index: true
  end
end

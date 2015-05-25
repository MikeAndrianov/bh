class Quest < ActiveRecord::Base
  belongs_to :company

  # TODO: add Reward model with Badges, title etc.


  # count – bottles, that was callected by user for current quest
  # number – bottles, that should be collected for completing quest
  # 
  def progress
    (count / number) * 100.0
  end
end

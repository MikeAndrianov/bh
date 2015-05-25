class Bottle < ActiveRecord::Base
  STATUSES = %w(available found returned)

  # TODO: add coordinates, where bottle was fould!

  validates :status, presence: true
  belongs_to :user

  # TODO: update_attribute doesn't call any callbacks. 
  # This method possibly should be refactoried in the future
  def change_bottle_status
    if user.hunter?
      update_attribute(:status, 'found')
    elsif user.manager?
      update_attribute(:status, 'returned')
    end
  end
end

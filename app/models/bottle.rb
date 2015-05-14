class Bottle < ActiveRecord::Base
  STATUSES = %w(available found returned)

  validates :status, presence: true
end

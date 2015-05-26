class Company < ActiveRecord::Base
  validates :name, presence: true

  has_many :quests
  has_many :managers, class_name: 'User'#, -> { joins(:roles).where('roles.name' => 'manager') }

  accepts_nested_attributes_for :quests
end

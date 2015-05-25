class User < ActiveRecord::Base
  # user.add_role "manager"
  # 
  rolify

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:vkontakte]

  has_many :bottles

  # TODO: add dynamic associations (only for managers)
  #
  belongs_to :company

  # has_many :reward, through user_reward

  %w(manager hunter).each do |role|
    define_method("#{role}?") do
      roles.where(name: "Role::#{role.upcase}".constantize).present?
    end
  end

end

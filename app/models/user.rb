class User < ActiveRecord::Base
  #
  # user.add_role "manager"
  rolify


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:vkontakte]

  %w(manager hunter).each do |role|
    define_method("#{role}?") do
      roles.where(name: "Role::#{role.upcase}".constantize).present?
    end
  end

end

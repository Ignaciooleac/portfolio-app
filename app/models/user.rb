class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

has_many :posts
has_many :comments, dependent: :destroy
has_one_attached :avatar

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
    user.email = auth.info.email
    user.password = Devise.friendly_token[0,20]
    user.name = auth.info.name
    end
  end

  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin
      rails_admin.dashboard_path
    else
      user_path(current_user)
    end
  end
end

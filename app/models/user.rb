class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, omniauth_providers: [:facebook]

  has_many :weddings
  has_many :registries
  # has_many :overstay_weddings, :through => :registries, :source => <name>
  has_many :overstay_weddings, source: :wedding, through: :registries
  has_many :received_messages, foreign_key: 'receiver_id', class_name: 'Message'
  has_many :sent_messages, foreign_key: 'sender_id', class_name: 'Message'


  # has_many :reviews
  # has_many :registries
  has_attachment :avatar_url

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:avatar_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end


  def last_message(user)
    Message.where('(sender_id = ? AND receiver_id = ?) OR (sender_id = ? AND receiver_id = ?)', id, user.id, user.id, id)
           .order(created_at: :desc)
           .first
  end

  def avatar
    avatar_url.path || "http://placehold.it/30x30"
  end
end


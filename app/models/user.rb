class User < OmniAuth::Identity::Models::ActiveRecord
  before_save {self.email = email.downcase}
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :name, presence: true, length: {maximum: 50, minimum: 1}
  validates :email, presence: true, length: {maximum: 100, minimum: 4}, uniqueness: {case_sensitive: false}, format: {with: VALID_EMAIL_REGEX}

  has_many :booking_records, :foreign_key => :user_id, :class_name => "Booking"

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.image = auth["info"]["image"]
    end
  end
end

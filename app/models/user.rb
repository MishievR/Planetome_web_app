class User < ActiveRecord::Base

  has_many :listings, dependent: :destroy

  before_save { self.email = email.downcase }

  validates :first_name, presence: true, length: { minimum: 2 }

  validates :last_name, presence: true, length: { minimum: 2 }

  validates :username, presence: false, uniqueness: { case_sensitive: false }



  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 105 },
            uniqueness: { case_sensitive: false },
            format: { with: VALID_EMAIL_REGEX }

  has_secure_password

  def name
    "#{first_name} #{last_name}"
  end

end

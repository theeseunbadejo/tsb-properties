class Account < ApplicationRecord
  # has_one_time_password(encrypted: true)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :two_factor_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable,
         :password_expirable, :password_archivable, :session_limitable, :expirable, :security_questionable, password_length: 10..128

         mount_uploader :image, ProfilePictureUploader
         mount_uploader :cover_image, ProfilePictureUploader

  has_one_time_password(encrypted: true)
  validate :password_complexity
  has_many :properties

  def full_name
    "#{first_name} #{last_name}"
  end

  def password_complexity
    return if password.blank? || password =~ /(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-])/

    errors.add :password, 'Complexity requirement not met. Please use: 1 uppercase, 1 lowercase, 1 digit and 1 special character'
  end

  def send_two_factor_authentication_code(code)
    # Send code via SMS, etc
    puts ">>>>>>>>>>>>>>> otp_code: #{code}"
  end

end

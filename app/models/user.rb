class User < ActiveRecord::Base
  #Use bcrypt to store hashed passwords and authenticate users
  include BCrypt

  validates_uniqueness_of :email, :username
  validates_presence_of :email, :username, :password

  def password
    @password ||= Password.new(password_hash)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(entered_password)
    password == entered_password
  end
end

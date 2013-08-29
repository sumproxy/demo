# encoding: UTF-8
require 'digest/sha2'

class User < ActiveRecord::Base
  attr_accessible :last_name
  attr_accessible :first_name
  attr_accessible :patronymic
  attr_accessible :login
  attr_accessible :hashed_password
  attr_accessible :salt
  attr_accessible :is_root
  attr_accessible :password
  attr_accessible :password_confirmation
  attr_accessor :password_confirmation
  attr_reader :password
  
  validates :login, :presence => true, :uniqueness => true
  validates :last_name, :presence => true
  validates :first_name, :presence => true
  validates :patronymic, :presence => true
  validates :password, :confirmation => true
  
  validate :password_must_be_present
  
  after_destroy :ensure_an_admin_remains
  
  def User.authenticate(login, password)
    if user = User.find_by_login(login)
      if user.hashed_password == encrypt_password(password, user.salt)
        user
      end
    end
  end
  
  def User.encrypt_password(password, salt)
    Digest::SHA2.hexdigest(password + 'wibble' + salt)
  end
  
  def password=(password)
    @password = password
    
    if password.present?
      generate_salt
      self.hashed_password = self.class.encrypt_password(password, salt)
    end
  end
  
  private
  def password_must_be_present
    errors.add(:password, "Не задан пароль") unless hashed_password.present?
  end

  def generate_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  
  def ensure_an_admin_remains
    if User.where('is_root = ?', true).count.zero?
      raise "Невозможно удалить последнего администратора"
    end
  end
end

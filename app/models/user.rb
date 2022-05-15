class User < ApplicationRecord
  attr_accessor :login
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  def self.find_for_database_authentication(warden_condition)
    conditions = warden_condition.dup
    login = conditions.delete(:login)
    where(conditions).where(
      ["lower(username) = :value OR lower(email) = :value", { value: login.strip.downcase}]
    ).first
  end

  enum role: [:user, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end

end

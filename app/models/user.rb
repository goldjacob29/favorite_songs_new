class User < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :first_name, :presence => true

  validates :last_name, :presence => true

  validates :username, :uniqueness => true

  validates :username, :presence => true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

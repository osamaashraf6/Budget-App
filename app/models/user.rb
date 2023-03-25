class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups, class_name: 'Group', dependent: :destroy, foreign_key: 'user_id'
  has_many :entities, class_name: 'Entitiy', dependent: :destroy, foreign_key: 'user_id'
  validates :name, presence: true
end

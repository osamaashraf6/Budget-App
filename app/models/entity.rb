class Entity < ApplicationRecord
  has_many :group_entities, dependent: :destroy
  has_many :groups, through: :group_entities
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  validates :name, presence: true
  validates :amount, presence: true
end

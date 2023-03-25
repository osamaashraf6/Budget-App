class Group < ApplicationRecord
  has_many :group_entities, dependent: :destroy
  has_many :entities, through: :group_entities
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  validates :name, presence: true
  validates :icon, presence: true
end

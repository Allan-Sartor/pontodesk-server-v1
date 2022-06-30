class Call < ApplicationRecord
  belongs_to :user
  has_many :review, dependent: :destroy
  
  validates :title, presence: true
  validates :priority_level, presence: true
  validates :anydesk_number, presence: true, length: { minimum: 9 }
  validates :description, presence: true
  validates :image_url, presence: true
  validates :call_status, presence: true
end

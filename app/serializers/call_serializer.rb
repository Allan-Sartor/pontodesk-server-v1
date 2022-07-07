class CallSerializer < ActiveModel::Serializer
  attributes :id,
             :title,
             :priority_level, 
             :anydesk_number, 
             :description, 
             :image_url, 
             :call_status,
             :created_at

  belongs_to :user
  has_many :review
end

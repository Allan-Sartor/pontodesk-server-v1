class CallSerializer < ActiveModel::Serializer
  attributes :id,
             :priority_level, 
             :anydesk_number, 
             :description, 
             :image_url, 
             :call_status,
             :created_at

  has_many :review
end

class CallSerializer < ActiveModel::Serializer
  attributes :id,
             :priority_level, 
             :anydesk_number, 
             :description, 
             :image_url, 
             :call_status,
             :avg_score

  has_many :review
end

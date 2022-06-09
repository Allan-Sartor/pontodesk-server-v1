class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :score
  has_one :user
  has_one :call
end

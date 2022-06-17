class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :name,
             :admin,
             :created_at
             
  has_many :call
end

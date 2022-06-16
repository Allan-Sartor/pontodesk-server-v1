class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :email,
             :name,
             :admin,
             :sector,
             :created_at
             
  has_many :call
end

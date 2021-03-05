class MemebershipSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :organization
end

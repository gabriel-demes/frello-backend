class MemebershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :organization_id
  # has_one :user
  # has_one :organization
  # belongs_to :user
  # belongs_to :organization
end

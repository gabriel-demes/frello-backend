class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :memembership_code
  has_many :lists
  #has_many :taskcards, through: :lists
end

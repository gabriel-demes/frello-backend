class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :lists 
  #has_many :taskcards, through: :lists
end

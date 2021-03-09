class ListSerializer < ActiveModel::Serializer
  attributes :id, :title
  #has_one :organization
  has_many :taskcards 
end

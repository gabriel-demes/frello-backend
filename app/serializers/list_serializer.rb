class ListSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :organization
  has_many :taskcards 
end

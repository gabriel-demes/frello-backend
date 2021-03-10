class TaskcardSerializer < ActiveModel::Serializer
  attributes :id, :title, :deadline, :description, :list_id
  #has_one :list
end

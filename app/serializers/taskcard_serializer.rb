class TaskcardSerializer < ActiveModel::Serializer
  attributes :id, :title, :deadline, :description
  #has_one :list
end

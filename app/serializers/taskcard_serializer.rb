class TaskcardSerializer < ActiveModel::Serializer
  attributes :id, :title, :deadline, :description, :list_id, :created_at
  #has_one :list
end

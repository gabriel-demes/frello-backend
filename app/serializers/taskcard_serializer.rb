class TaskcardSerializer < ActiveModel::Serializer
  attributes :id, :title, :deadline, :description
  belongs_to :list
end

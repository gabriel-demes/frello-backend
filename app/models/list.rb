class List < ApplicationRecord
  belongs_to :organization
  has_many :taskcards
end

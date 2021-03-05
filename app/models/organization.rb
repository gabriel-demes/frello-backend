class Organization < ApplicationRecord
    has_many :lists
    has_many :taskcards, through: :lists
    has_many :memberships
    has_many :users, through: :memberships 
end

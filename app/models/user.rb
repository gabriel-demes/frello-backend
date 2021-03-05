class User < ApplicationRecord
    has_many :memberships
    has_many :organizations, through: :memberships
    
end

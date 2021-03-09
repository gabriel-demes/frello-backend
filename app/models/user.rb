class User < ApplicationRecord
    has_many :memeberships
    has_many :organizations, through: :memeberships
    
end

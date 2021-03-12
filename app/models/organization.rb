class Organization < ApplicationRecord
    has_many :lists
    has_many :taskcards, through: :lists
    has_many :memeberships
    has_many :users, through: :memeberships 

    
       
       validates :memembership_code, uniqueness: true
    


end

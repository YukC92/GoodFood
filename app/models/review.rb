class Review < ApplicationRecord
    validates :content, :rating, :business_id, :user_id, presence: true
    validates :rating, inclusion: {in: (1..5)}
  
    belongs_to :user,
        foreign_key: :user_id,
        class_name: :User

    belongs_to :business,
        foreign_key: :business_id,
        class_name: :Business
end

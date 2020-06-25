class Business < ApplicationRecord

    validates :business_name, :address, :city, :state, :zip_code, :latitude, :longitude, :rating, :business_info, presence: true

    belongs_to :owner,
        foreign_key: :user_id,
        class_name: :User

    has_many :reviews,
        foreign_key: :business_id,
        class_name: :Review
end

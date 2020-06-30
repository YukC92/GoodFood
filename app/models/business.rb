class Business < ApplicationRecord

    validates :business_name, :address, :city, :state, :zip_code, :latitude, :longtitude, :rating, presence: true

    has_many :reviews,
        foreign_key: :business_id,
        class_name: :Review
end

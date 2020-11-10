class Category < ApplicationRecord
    validates :name, uniqueness: true, presence: true

    has_many :businesses,
        foreign_key: :category_id,
        source: :Business
end

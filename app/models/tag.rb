class Tag < ApplicationRecord
    has_many :taggings
    has_many :blogs, through: :taggings, dependent: :destroy

    validates :title, presence: true

    def to_s
        title
    end
end

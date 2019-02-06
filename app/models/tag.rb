class Tag < ApplicationRecord
    validates :title, presence: true, uniqueness: { case_sensitive: false }, length: {maximum: 20}
    has_many :links_tags
    has_many :gossips, through: :links_tags
end

class Tag < ApplicationRecord
    has_many :links_tags
    has_many :gossips, through: :links_tags
end

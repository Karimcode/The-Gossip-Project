class Tag < ApplicationRecord
    has_many :links_tags
    has_many :gossips, throught: :links_tags
end

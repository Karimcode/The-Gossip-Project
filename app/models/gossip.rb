class Gossip < ApplicationRecord
    belongs_to :user
    has_many :links_tags
    has_many :tags, through: :links_tags
end

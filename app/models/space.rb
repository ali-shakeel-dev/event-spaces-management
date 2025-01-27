class Space < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  has_many_attached :images
end

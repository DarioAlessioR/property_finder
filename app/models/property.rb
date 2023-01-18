class Property < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :account

    scope :latest, -> { order(created_at: :desc) }

    has_many_attached :pictures, dependent: :destroy 
end


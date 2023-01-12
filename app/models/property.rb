class Property < ApplicationRecord
    include ImageUploader::Attachment(:image)
    belongs_to :account

    scope :latest, -> { order(created_at: :desc) }
end


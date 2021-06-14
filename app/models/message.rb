class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true, length: {maximum: 240}
    scope :custom_display, -> { order(:created_at).last(500) }
end

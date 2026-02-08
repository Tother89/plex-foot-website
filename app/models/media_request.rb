class MediaRequest < ApplicationRecord
  belongs_to :user
  belongs_to :media_item

  STATUSES = %w[requested approved downloading available rejected].freeze
  validates :status, inclusion: { in: STATUSES }
  validates :media_item_id, uniqueness: { scope: :user_id }
end

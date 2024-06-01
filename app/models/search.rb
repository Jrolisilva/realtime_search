class Search < ApplicationRecord
  validates :term, presence: true

  scope :complete, -> { where(complete: true) }
end

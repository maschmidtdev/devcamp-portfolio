class Blog < ApplicationRecord
  enum status: [ :draft, :published ]
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
end

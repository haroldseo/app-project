class Cafe < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    has_many :reviews
    validates :name, presence: true

    def set_defaults
        self.published = false if self.published.nil?
    end
end

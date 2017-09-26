class Cafe < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    has_many :reviews

    def set_defaults
        self.published = false if self.published.nil?
    end
end

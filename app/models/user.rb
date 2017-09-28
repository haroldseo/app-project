class User < ApplicationRecord
    after_initialize :set_defaults, unless: :persisted?
    has_secure_password
    has_many :reviews
    validates :email, :name, presence: true
    validates :email, uniqueness: true
    
    def set_defaults
        self.admin = false if self.admin.nil?
    end
end

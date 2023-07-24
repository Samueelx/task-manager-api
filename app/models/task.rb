class Task < ApplicationRecord
    enum :status, [:CREATED, :STARTED, :COMPLETED, :CANCELLED]

    validates :title, {
        length: {minimum: 5, maximum: 20},
        presence: true
    }
    validates :description, {
        length: {minimum: 20},
        presence: true
    }

end

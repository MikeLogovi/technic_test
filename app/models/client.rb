class Client < ApplicationRecord
    belongs_to :user
    validates :first_name, presence: true, lenght: {minimum:2}
    validates :last_name, presence: true, lenght: {minimum:2}
end

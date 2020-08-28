class User < ApplicationRecord
    has_many :questions
    validates :username, presence: true, uniqueness: {case_sensitive:true}, length: { minimum: 3, maximum: 5}
end

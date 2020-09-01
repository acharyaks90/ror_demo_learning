class User < ApplicationRecord
    before_save { self.email = email.downcase}
    has_many :questions
    validates :username, presence: true, uniqueness: {case_sensitive:true}, length: { minimum: 5, maximum: 12}
    validates :email, presence: true, uniqueness: {case_sensitive:false}, length: { minmum: 4, maximum: 20}
    validates :password, presence: true, length: { minimum: 8, maximum: 16}
    has_secure_password
end

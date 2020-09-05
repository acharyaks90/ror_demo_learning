class Question < ApplicationRecord
    validates :title, presence: true
    belongs_to :user
    has_many :question_categories
    has_many :categories, through: :question_categories
end
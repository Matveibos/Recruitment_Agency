class Vacancy < ApplicationRecord
  has_rich_text :body
  belongs_to :user
  has_one :techstack, as: :entity
end

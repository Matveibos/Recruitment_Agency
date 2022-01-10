class Techstack < ApplicationRecord
  belongs_to :entity, polymorphic: true
end

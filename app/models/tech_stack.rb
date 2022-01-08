class TechStack < ApplicationRecord
  belongs_to :entity, polymorphic: true

end

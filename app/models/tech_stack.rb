class TechStack < ApplicationRecord
  belongs_to :entity, polymorphic: true
  @tech_stack = TechStack.all
end

class Tech_stack < ApplicationRecord
  belongs_to :entity, polymorphic: true
end

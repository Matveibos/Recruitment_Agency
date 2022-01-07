class AddTechnologiesStack < ActiveRecord::Migration[6.1]
  def change
    create_table :tech_stack do |t|
      t.string :name
      t.string :level
      t.references :entity, polymorphic: true
      t.timestamps
    end
  end
end

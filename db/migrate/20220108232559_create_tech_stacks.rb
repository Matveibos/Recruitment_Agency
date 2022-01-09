class CreateTechStacks < ActiveRecord::Migration[6.1]
  def change
    create_table :tech_stacks do |t|
      t.string  :name
      t.string  :level
      t.bigint  :entity_id
      t.string  :entity_type
      t.timestamps
    end

    add_index :tech_stacks, [:entity_type, :entity_id]
  end
end

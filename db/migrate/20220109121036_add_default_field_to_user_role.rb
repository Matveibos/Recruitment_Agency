class AddDefaultFieldToUserRole < ActiveRecord::Migration[6.1]
  change_table :users do |t|
    t.change :role, :string, { default: "User" }
  end
end

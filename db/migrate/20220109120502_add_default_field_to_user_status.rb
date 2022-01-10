class AddDefaultFieldToUserStatus < ActiveRecord::Migration[6.1]
  change_table :users do |t|
    t.change :status, :string, { default: "active" }
  end
end

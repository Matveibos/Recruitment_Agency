class CreateVacancies < ActiveRecord::Migration[6.1]
  def change
    create_table :vacancies do |t|
      t.string :title, null: false
      t.date :term, null: false
      t.string :technical_level, null: false
      t.string :status, null: false, default: "active"
      t.timestamps
    end
  end
end

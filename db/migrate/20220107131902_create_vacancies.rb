class CreateVacancies < ActiveRecord::Migration[6.1]
  def change
    create_table :vacancies do |t|
      t.string :title
      t.text :body
      t.date :term
      t.string :technical_level
      t.string :status
      t.integer :user_id
      t.timestamps
    end
  end
end

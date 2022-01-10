class AddUserToVacancies2 < ActiveRecord::Migration[6.1]
  def change
    add_reference :vacancies, :user, index: true, null: false
  end
end

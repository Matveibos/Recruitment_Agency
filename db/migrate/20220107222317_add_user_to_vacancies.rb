class AddUserToVacancies < ActiveRecord::Migration[6.1]
  def change
    remove_column :vacancies, :user

  end
end

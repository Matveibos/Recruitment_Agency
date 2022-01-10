class RenameTechStackToTechstack < ActiveRecord::Migration[6.1]
  def change
    rename_table :tech_stacks, :techstacks
  end
end

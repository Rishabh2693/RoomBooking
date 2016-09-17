class AddSuperAdminToAdmins < ActiveRecord::Migration[5.0]
  def change
    add_column :admins, :super_admin, :boolean
  end
end

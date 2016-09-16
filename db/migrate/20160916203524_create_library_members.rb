class CreateLibraryMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :library_members do |t|
      t.string :email
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end

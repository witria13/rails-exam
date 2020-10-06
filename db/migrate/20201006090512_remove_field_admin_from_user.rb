class RemoveFieldAdminFromUser < ActiveRecord::Migration[6.0]
  def up
    remove_column :users, :admin
  end

end

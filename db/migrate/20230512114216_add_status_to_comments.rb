class AddStatusToComments < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :status, :string, null:false, default:'public'
  end
end

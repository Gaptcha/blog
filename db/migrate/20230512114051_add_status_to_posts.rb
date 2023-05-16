class AddStatusToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :status, :string, null:false, default:'public'
  end
end

class AddMaskedUserIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :masked_user_id, :string
  end
end

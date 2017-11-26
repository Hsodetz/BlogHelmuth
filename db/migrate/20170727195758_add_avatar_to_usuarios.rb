class AddAvatarToUsuarios < ActiveRecord::Migration[5.0]
  def change
    add_column :usuarios, :avatar, :string
  end
end

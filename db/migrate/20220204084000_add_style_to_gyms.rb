class AddStyleToGyms < ActiveRecord::Migration[7.0]
  def change
    add_column :gyms, :style, :integer
  end
end

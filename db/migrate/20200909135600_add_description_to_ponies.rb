class AddDescriptionToPonies < ActiveRecord::Migration[6.0]
  def change
    add_column :ponies, :description, :string
  end
end

class CreateTablePonies < ActiveRecord::Migration[6.0]
  def change
    create_table :ponies do |t|
      t.string :name, unique: true
      t.string :mane
      t.string :fur
      t.string :eyes
    end
  end
end

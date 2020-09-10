class CreateTableImports < ActiveRecord::Migration[6.0]
  def change
    create_table :imports do |t|
      t.string :filename
      t.string :status
      t.integer :nb_lines_created
      t.integer :nb_lines_updated
      t.integer :nb_errors
      t.string :messages
    end
  end
end

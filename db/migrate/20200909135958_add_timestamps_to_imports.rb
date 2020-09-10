class AddTimestampsToImports < ActiveRecord::Migration[6.0]
  def change
    change_table :imports do |t|
      t.timestamps
    end
  end
end

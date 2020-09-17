class CreateJoinTableGroupsPonies < ActiveRecord::Migration[6.0]
  def change
    create_join_table :groups, :ponies do |t|
    	t.index :group_id 
    	t.index :pony_id
      	t.timestamps
    end
  end
end


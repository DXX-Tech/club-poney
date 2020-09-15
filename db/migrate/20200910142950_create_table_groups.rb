class CreateTableGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
    	t.string :name, unique:true
    end
    create_table :groups_ponies do |t|
    	t.belongs_to :group
    	t.belongs_to :pony
    end
  end
end


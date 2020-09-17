class Group < ApplicationRecord
	has_many :groups_ponies
	has_many :ponies, :through => :groups_ponies
end

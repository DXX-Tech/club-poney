class Group < ApplicationRecord
	has_many :ponies, through: :groups_ponies
end

class Pony < ApplicationRecord
	has_many :groups, through: :groups_ponies
end

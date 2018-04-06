class Dojo < ApplicationRecord
	validates :name, :city, :state, presence:true, length: { in: 2..20 }
end

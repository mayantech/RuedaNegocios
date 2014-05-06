class Estado < ActiveRecord::Base
	has_many :users

	validates :descripcion, uniqueness: true, presence: true
end

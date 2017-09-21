class Profile < ApplicationRecord
	has_many :addresses
	has_many :contact_numbers
end

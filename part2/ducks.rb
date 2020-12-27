class Duck < ActiveRecord::Base
	validate do
		errors.add(:base, "Illegal duck name.") unless name[0] == 'D'
	end
end
class Project < ActiveRecord::Base
	searchkick autocomplete: ['name']
end

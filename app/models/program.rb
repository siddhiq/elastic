class Program < ActiveRecord::Base
	searchkick autocomplete: ['name']
end

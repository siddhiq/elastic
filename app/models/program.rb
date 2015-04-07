class Program < ActiveRecord::Base
	searchkick text_start: [:name]
end

class User < ActiveRecord::Base
	searchkick autocomplete: ['name']
end

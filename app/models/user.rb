class User < ActiveRecord::Base
	searchkick text_start: [:name]
end

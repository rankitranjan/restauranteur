class Restaurant < ActiveRecord::Base
	serialize :properties, JSON
end
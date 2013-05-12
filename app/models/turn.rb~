class Turn < ActiveRecord::Base
  attr_accessible :day,  :start_time, :finish_time, :start_date, :finish_date
    def self.search(search)
		where("day like '%#{search}%' ")
	end
end

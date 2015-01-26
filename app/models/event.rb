class Event < ActiveRecord::Base
  default_scope { order('date_time ASC') }
end

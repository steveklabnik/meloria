class Appointment < ActiveRecord::Base
  belongs_to :customer
end

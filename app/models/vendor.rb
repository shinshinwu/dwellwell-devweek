class Vendor < ActiveRecord::Base
  has_many  :dwellings
  has_many  :applications,  through: :dwellings
end
class Dwelling < ActiveRecord::Base
  belongs_to  :vendor
  has_many    :applications
  has_many    :users, through: :applications
end
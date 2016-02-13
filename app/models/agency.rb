class Agency < ActiveRecord::Base
  has_many  :qualifications
  has_many  :users, through: :qualifications
end
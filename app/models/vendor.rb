class Vendor < ActiveRecord::Base
  has_many  :dwellings
  has_many  :applications,  through: :dwellings

after_initialize :create_masked_vendor_id

    def create_masked_vendor_id
      random_letters  = ('a'..'z').to_a.shuffle[0,4].join
      random_numbers  = 10000 + Random.rand(100000 - 10000)
      kind_of_agent   = 'vendor'
      masked_vendor_id  = random_numbers.to_s + kind_of_agent + random_letters
      self.masked_vendor_id = masked_vendor_id
      self.save
    end

end
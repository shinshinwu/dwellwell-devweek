# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

races = Race.create([
  {category: "White"},
  {category: "Black/African American"},
  {category: "Black/African American and White"},
  {category: "Asian"},
  {category: "Asian and White"},
  {category: "American Indian or Alaska Native"},
  {category: "American Indian/Alaska Native and African American"},
  {category: "American Indian or Alaska Native and White "},
  {category: "Native Hawaiian or Other Pacific Islander"},
  {category: "Hispanic/Latino"}
])

agency = Agency.create([
  {name: "San Francisco Housing Authority", email: "contact@sfha.org", program_name: "Section 8", line_1: "​1815 Egbert Ave", city: "San Francisco", state: "CA", zipcode: "94124", photo_url: "http://cdn.affordablehousingonline.com/HAImages/CA001.jpg"}
])

vendor = Vendor.create([
  {name: "Happy Housing Development", email: "happy@housing.org",line_1: "​375 Alabama St", line_2: "#300", city: "San Francisco", state: "CA", zipcode: "94110", photo_url: "http://i62.tinypic.com/j6ncyo.jpg"}
])

dwellings = Dwelling.create([
  {vendor_id: 1, name: "Park Place", line_1: "​2932 Street St", line_2: "#100", city: "San Francisco", state: "CA", zipcode: "94110", photo_url: "http://www.wnyc.org/i/raw/1/transportation201111RichardsonApartments.jpg", monthly_rent: 1350},
  {vendor_id: 1, name: "Marvin Gardens", line_1: "​4393 Road Rd", line_2: "#10", city: "San Francisco", state: "CA", zipcode: "94110", photo_url: "http://goldfarblipman.com/wp-content/uploads/2013/11/St.-Peters-Place.jpg", monthly_rent: 1300},
  {vendor_id: 1, name: "St. James Place", line_1: "​3102 Avenue Ave", line_2: "#32", city: "San Francisco", state: "CA", zipcode: "94110", photo_url: "https://assets.pando.com/_versions/2014/01/san-fran-housing_featured.jpg", monthly_rent: 1200},
  {vendor_id: 1, name: "Connecticut Ave", line_1: "​2021 Boulevard Blvd", line_2: "#3", city: "San Francisco", state: "CA", zipcode: "94110", photo_url: "http://ww2.hdnux.com/photos/10/11/33/2135781/5/920x920.jpg", monthly_rent: 1080}
])
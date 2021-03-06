# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
  states = [
    [ "Alabama", "AL" ], [ "Alaska", "AK" ], [ "Arizona", "AZ" ], [ "Arkansas", "AR" ], 
    [ "California", "CA" ], [ "Colorado", "CO" ], [ "Connecticut", "CT" ], [ "Delaware", "DE" ], 
    [ "District Of Columbia", "DC" ], [ "Florida", "FL" ], [ "Georgia", "GA" ], [ "Hawaii", "HI" ], 
    [ "Idaho", "ID" ], [ "Illinois", "IL" ], [ "Indiana", "IN" ], [ "Iowa", "IA" ], 
    [ "Kansas", "KS" ], [ "Kentucky", "KY" ], [ "Louisiana", "LA" ], [ "Maine", "ME" ], 
    [ "Maryland", "MD" ], [ "Massachusetts", "MA" ], [ "Michigan", "MI" ], [ "Minnesota", "MN" ], 
    [ "Mississippi", "MS" ], [ "Missouri", "MO" ], [ "Montana", "MT" ], [ "Nebraska", "NE" ], 
    [ "Nevada", "NV" ], [ "New Hampshire", "NH" ], [ "New Jersey", "NJ" ], [ "New Mexico", "NM" ], 
    [ "New York", "NY" ], [ "North Carolina", "NC" ], [ "North Dakota", "ND" ], [ "Ohio", "OH" ], 
    [ "Oklahoma", "OK" ], [ "Oregon", "OR" ], [ "Pennsylvania", "PA" ], [ "Rhode Island", "RI" ], 
    [ "South Carolina", "SC" ], [ "South Dakota", "SD" ], [ "Tennessee", "TN" ], [ "Texas", "TX" ], 
    [ "Utah", "UT" ], [ "Vermont", "VT" ], [ "Virginia", "VA" ], [ "Washington", "WA" ], 
    [ "West Virginia", "WV" ], [ "Wisconsin", "WI" ], [ "Wyoming", "WY" ] ]

states.each{ |state| State.create(:title => state[0], :code => state[1]) }

events = Event.create([
  {:name => "National City Night on the Town", 
   :start_datetime => Time.now.advance(:days => 5),
   :end_datetime => Time.now.advance(:days =>5, :minutes => 30),
   :sponsor => true
   },
   {:name => "Great Lakes Brewery...",
     :start_datetime => Time.now.advance(:days => 8),
     :end_datetime => Time.now.advance(:days => 8, :minutes => 30),
     :sponsor => true},
   {:name => "Hackibou",
     :start_datetime => Time.now.advance(:days => 20),
     :end_datetime => Time.now.advance(:days => 20, :minutes => 30),
     :sponsor => true},
    {:name => "Clerb",
     :start_datetime => Time.now.advance(:days => 6),
     :end_datetime => Time.now.advance(:days => 6, :minutes => 30),
     :sponsor => false}])

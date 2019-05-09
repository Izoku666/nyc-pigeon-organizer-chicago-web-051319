pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  #puts data
  
  res = {}
  data.each do |infoKey , infoOptions|
    
  # This will setup the new hash structure
    infoOptions.each do |option , pidgeon|
      pidgeon.each do |i|  # creates a new hash key for every pidgeon
        res[i] = {}
        puts res
      end
    end
    
    infoOptions.each do|option , pidgeon|
  end
  
  
  puts "Result:   #{res}"
  return res
end


#nyc_pigeon_organizer(pigeon_data)

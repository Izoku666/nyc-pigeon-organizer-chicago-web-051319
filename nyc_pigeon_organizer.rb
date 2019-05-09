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
   
    infoOptions.each do |option , pidgeons|
      
      pidgeons.each do |i|
        puts"giving #{i} the var: #{infoKey} (which is #{option}"
        res[i] = {}
        res[i][infoKey] = option
      end
    end
    
    # this will fill the new has structure with the data
    
  end
  
  puts "Result:   #{res}"
  return res
end


nyc_pigeon_organizer(pigeon_data)

def nyc_pigeon_organizer(data)
  # write your code here!
  res = {}
  data.each do |info , infoVal|
    infoVal.each do |infoData , name_arr|
      name_arr.each do |i|
        res[i][info] = infoData
      end
    end
  end
  
  res.each do |k , v|
    puts k
  end
  return res
end


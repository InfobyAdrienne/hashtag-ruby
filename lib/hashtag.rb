def generateHashtag(str)

  hashtag = "##{str.split.each{|word| 
    word.capitalize!}.join('')}"
  
  if str.strip.empty?
    return false 
  elsif hashtag.length > 140
    return false 
  else 
    return hashtag
  end

end 

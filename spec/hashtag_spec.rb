require 'hashtag'

describe 'hashtag generator' do 
  it 'should return false of the string is empty' do 
    expect(generateHashtag("")).to eq false
  end

  it 'should return false of the string is empty, apart from spaces' do 
    expect(generateHashtag(" ")).to eq false
  end

  it 'should have a hashtag (#) at the beginning' do 
    expect(generateHashtag("Do We have A Hashtag")).to eq "#DoWeHaveAHashtag"
  end

  it 'should capitalize first letters of words' do 
    expect(generateHashtag("Codewars is nice")).to eq "#CodewarsIsNice"
  end

  it 'should not accept a string longer that 140 characters' do 
    expect(generateHashtag("a" * 140)).to eq false
  end 

  it 'should not have a hashtag longer than 140 characters' do 
    expect(generateHashtag("Looooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooong Cat")).to eq false 
  end

  it 'spaces should not be accounted for in the character count' do 
    expect(generateHashtag("code" + " " * 140 + "wars")). to eq "#CodeWars"
  end 
end 
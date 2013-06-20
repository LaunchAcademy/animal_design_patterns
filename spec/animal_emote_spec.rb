require 'rspec'

require_relative '../pets'

describe AnimalEmote do
  it 'emotes "woof" for a dog' do
    emote = AnimalEmote.new(Dog.new)
    expect(emote.emote).to eql('woof')
  end

  it 'emotes "meow" for a cat' do
    emote = AnimalEmote.new(Cat.new)
    expect(emote.emote).to eql('meow')
  end
end

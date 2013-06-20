module EmoteAdapters
  class DogAdapter < EmoteAdapter
    def emote
      @animal.bark
    end
  end
end

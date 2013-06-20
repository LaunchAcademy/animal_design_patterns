module EmoteAdapters
  class CatAdapter < EmoteAdapter
    def emote
      @animal.meow
    end
  end
end

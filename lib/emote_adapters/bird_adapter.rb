module EmoteAdapters
  class BirdAdapter < EmoteAdapter
    def emote
      @animal.chirp
    end
  end
end

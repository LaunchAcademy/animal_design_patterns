module EmoteListeners
  class EmoteLogger < EmoteListener
    def emote_happened(animal)
      puts "#{animal.class.name} emoted!"
    end
  end
end

class AnimalEmote
  def initialize(animal)
    @animal = animal
    @listeners = []
    @listeners << EmoteListeners::EmoteLogger.new
  end

  def emote
    adapter = adapter_map[@animal.class.name]
    if adapter
      result = adapter.new(@animal).emote.tap do
        emote_happened
      end
    end
  end

  protected
  def emote_happened
    @listeners.each do |listener|
      listener.emote_happened(@animal)
    end
  end
  def adapter_map
    {
      "Dog" => EmoteAdapters::DogAdapter,
      "Cat" => EmoteAdapters::CatAdapter,
      "Bird" => EmoteAdapters::BirdAdapter
    }
  end
end

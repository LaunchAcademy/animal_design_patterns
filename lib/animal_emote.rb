class AnimalEmote
  def initialize(animal)
    @animal = animal
  end

  def emote
    adapter = adapter_map[@animal.class.name]
    if adapter
      adapter.new(@animal).emote
    end
  end

  protected
  def adapter_map
    {
      "Dog" => EmoteAdapters::DogAdapter,
      "Cat" => EmoteAdapters::CatAdapter,
      "Bird" => EmoteAdapters::BirdAdapter
    }
  end
end

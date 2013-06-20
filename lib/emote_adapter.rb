class EmoteAdapter
  def initialize(animal)
    @animal = animal
  end

  def emote
    raise 'override this method'
  end
end

class AnimalEmote
  def initialize(animal)
    @animal = animal
  end

  def emote
    if @animal.kind_of?(Dog)
      @animal.bark
    elsif @animal.kind_of?(Cat)
      @animal.meow
    elsif @animal.kind_of?(Bird)
      @animal.chirp
    end
  end
end



class Puppy
  attr_accessor :name, :breed, :age

  def initialize(text)
    @name = text[:name] #i think do this b/c accessing from param
    @breed = text[:breed]
    @age = text[:age]
  end

end

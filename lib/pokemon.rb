class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(keywords)
  end
  
  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) 
    VALUES (?, ?)",name, type)
  end
  
  def self.find(num, db)
    pokemon = db.execute("SELECT 8 FROM pokemon WHERE id = ?" , [num])
    new_poke = self.new(pokemon)
    new_poke.id = pokemon[0][0]
    new_poke.name = pokemon[0][1]
    new_poke.type = pokemon[0][2]
    return new_poke
  end    
  
  
end

class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(keywords)
  end
  
  def self.save(name,type,db)
   db.execute "INSERT INTO pokemon(name, type)
    VALUES(?, ?)",name,type)
   
  end
end

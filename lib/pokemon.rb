class Pokemon
  
  attr_accessor :id, :name, :type, :db
  
  def initialize(keywords)
  end
  
  def self.save(name,type,db)
    sql=<<-SQL
    INSERT INTO pokemon
    VALUES(?, ?, ?, ?)
    SQL
    DB[:conn].execute(sql)
  end
end

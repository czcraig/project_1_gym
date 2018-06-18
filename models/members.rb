require_relative("../db/sql_runner")

class Member

attr_reader :id,
attr_accessor :name

def initialize(options)
 @id = options["id"].to_i if options["id"]
 @name = options["name"]
end
def save()
  sql = "INSERT INTO members
  (
    name
  )
  VALUES
  (
    $1
  )
  RETURNING id"
  values = [@name]
  member = SqlRunner.run( sql, values ).first
  @id = member['id'].to_i
end

def self.all()
  sql = "SELECT * FROM members"
  members = SqlRunner.run( sql )
  result = members.map { |member| Member.new( member ) }
  return result
end

def delete()
  sql = "DELETE FROM members
  WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def self.delete_all()
    sql = "DELETE FROM members;"
    SqlRunner.run(sql)
  end

  def self.find( id )
    sql = "SELECT * FROM members WHERE id = $1"
    values = [id]
    member = SqlRunner.run(  sql, values )
    result = Member.new( member.first )
    return result
  end

  def update()
    sql = "UPDATE members
    SET name = $1
    WHERE id = $2"
    values = [@name, @id]
    SqlRunner.run( sql, values )
  end



end

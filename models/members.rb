require_relative("../db/sql_runner")

class Member

attr_reader :id
attr_accessor :name, :age

def initialize(options)
 @id = options["id"].to_i if options["id"]
 @name = options["name"]
 @age = options["age"].to_i
end
def save()
  sql = "INSERT INTO members
  (
    name, age
  )
  VALUES
  (
    $1, $2
  )
  RETURNING id"
  values = [@name, @age]
  member = SqlRunner.run(sql, values).first
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
    SET
    (
      name, age
    ) =
    (
      $1, $2
    )
    WHERE id = $3"
    values = [@name, @age, @id]
    SqlRunner.run( sql, values )
  end



end

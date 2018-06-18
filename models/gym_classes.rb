require_relative("../db/sql_runner")

class GymClass

attr_reader :id, :name
#attr_accessor :name


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
  end

  def save()
    sql = "INSERT INTO gym_classes
    (
      name
    )
    VALUES
    (
      $1
    )
    RETURNING id"
    values = [@name]
    gym_class = SqlRunner.run( sql, values ).first
    @id = gym_class['id'].to_i
  end


  def self.all()
    sql = "SELECT * FROM gym_classes"
    gym_classes = SqlRunner.run( sql )
    result = gym_classes.map { |gym_class| GymClass.new( gym_class ) }
    return result
  end

  def delete()
    sql = "DELETE FROM gym_classes
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
     sql = "DELETE FROM gym_classes;"
     SqlRunner.run(sql)
  end

   def update()
     sql = "UPDATE gym_classes
     SET name = $1
     WHERE id = $2"
     values = [@name, @id]
     SqlRunner.run( sql, values )
   end

 def self.find( id )
   sql = "SELECT * FROM gym_classes WHERE id = $1"
   values = [id]
   gym_class = SqlRunner.run(  sql, values )
   result = GymClass.new( gym_class.first )
   return result
 end

def members()
  sql = "SELECT members.* FROM members INNER JOIN bookings
  ON bookings.member_id = members.id
  WHERE bookings.gymclass_id = $1;"
  values = [@id]
  results = SqlRunner.run(sql, values)
  return results.map { |member| Member.new(member) }
end







end

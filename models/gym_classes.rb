require_relative("../db/sql_runner")

class GymClass

attr_accessor :id, :name, :spaces_available, :minimum_age
#attr_accessor :name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @spaces_available = options["spaces_available"].to_i
    @minimum_age = options["minimum_age"].to_i
  end

  def save()
    sql = "INSERT INTO gym_classes
    (
      name, spaces_available, minimum_age
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @spaces_available, @minimum_age]
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
     SET
     (
       name, spaces_available, minimum_age
     ) =
     (
      $1, $2, $3
     )
     WHERE id = $4"
     values = [@name, @spaces_available, @minimum_age, @id]
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

def book_gym_class()
    @spaces_available -= 1
    update()
end

def is_full?
  return @spaces_available <= 0
end

def member_too_young(member)
    return member.age < @minimum_age
end




end

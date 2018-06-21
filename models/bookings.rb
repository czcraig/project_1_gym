require_relative("../db/sql_runner")


class Booking

attr_accessor :id, :gymclass_id, :member_id, :spaces_available

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @gymclass_id = options["gymclass_id"].to_i
    @member_id = options["member_id"].to_i

  end

  def save()
    sql = "INSERT INTO bookings
    (
      gymclass_id,
      member_id
    )
    VALUES
    (
      $1, $2
    )
    RETURNING id"
    values = [@gymclass_id, @member_id]
     booking= SqlRunner.run( sql, values ).first
    @id = booking['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM bookings"
    bookings = SqlRunner.run( sql )
    result = bookings.map { |booking| Booking.new( booking ) }
    return result
  end

  def delete()
    sql = "DELETE FROM bookings
    WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.delete_all()
    sql = "DELETE FROM bookings;"
    SqlRunner.run(sql)
  end

  def member()
     sql = "SELECT * FROM members
     WHERE id = $1"
     values = [@member_id]
     results = SqlRunner.run( sql, values )
     return Member.new( results.first )
  end

  def gym_class()
    sql = "SELECT * FROM gym_classes
    WHERE id = $1"
    values = [@gymclass_id]
    results = SqlRunner.run( sql, values )
    return GymClass.new( results.first )
 end

 def self.find( id )
   sql = "SELECT * FROM bookings WHERE id = $1"
   values = [id]
   booking = SqlRunner.run(  sql, values )
   result = Booking.new( booking.first )
   return result
 end


end

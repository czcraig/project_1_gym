require_relative("../db/sql_runner")

class Member

attr_reader :id, :name

def initiliaze(options)
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









end

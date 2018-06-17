require_relative("../db/sql_runner")

class Member

attr_reader :id, :name

def initiliaze(options)
 @id = options["id"].to_i if options["id"]
 @name = options["name"]
end









end

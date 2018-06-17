require_relative("../db/sql_runner")

class GymClass

attr_reader :id, :name, :time


  def initiliaze(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @time = options["time"].to_i
  end













end

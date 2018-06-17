require_relative("../db/sql-runner")

class GymClass

attr_reader :id, :name, :time


  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @name = options["name"]
    @time = options["time"].to_i
  end













end

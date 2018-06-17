require_relative("../db/sql-runner")


class Booking

attr_reader :id, :gymclass_id, :member_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @gymclass_id = options["gymclass_id"].to_i
    @member_id = options["member_id"].to_i
  end


end

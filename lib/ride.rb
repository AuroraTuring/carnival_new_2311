class Ride
  attr_reader :name,
              :min_height,
              :admission_fee,
              :excitement,
              :total_revenue,
              :rider_log

  def initialize(attributes)
    @name = attributes[:name]
    @min_height = attributes[:min_height]
    @admission_fee = attributes[:admission_fee]
    @excitement = attributes[:excitement]
    @total_revenue = 0
    @rider_log = {}
  end

  def board_rider(boarded_visitor)
    # first, rider pays cost
    # fail if they can't pay

    @rider_log[boarded_visitor] = 0 if @rider_log[boarded_visitor].nil?
    @rider_log[boarded_visitor] += 1
  end
end

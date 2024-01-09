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
    if @rider_log[boarded_visitor] == nil
      @rider_log[boarded_visitor] = 0
    end
    @rider_log[boarded_visitor] += 1
  end


end

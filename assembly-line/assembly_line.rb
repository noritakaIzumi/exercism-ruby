class AssemblyLine
  CAR_PRODUCE_UNIT = 221.0
  attr_reader :speed, :success_rate

  def initialize(speed)
    @speed = speed
    @success_rate = get_success_rate(speed)
  end

  def production_rate_per_hour
    CAR_PRODUCE_UNIT * @speed * success_rate / 100
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end

  private

  # @param [Integer] speed
  # @return [Integer]
  def get_success_rate(speed)
    if 1 <= speed and speed <= 4
      100
    elsif 5 <= speed and speed <= 8
      90
    elsif speed === 9
      80
    else
      77
    end
  end
end

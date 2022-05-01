class Lasagna
  EXPECTED_MINUTES_IN_OVEN = 40

  # @param [Integer] actual_minutes_in_oven
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  # @param [Integer] layers
  def preparation_time_in_minutes(layers)
    2 * layers
  end

  # @param [Integer] number_of_layers
  # @param [Integer] actual_minutes_in_oven
  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

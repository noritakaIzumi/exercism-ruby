class Attendee
  attr_accessor :height
  attr_reader :pass_id

  # @param [Integer] height
  # @return [void]
  def initialize(height)
    self.height = height
  end

  # @return [Integer]
  def height
    @height
  end

  # @return [Integer]
  def pass_id
    @pass_id
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end
end

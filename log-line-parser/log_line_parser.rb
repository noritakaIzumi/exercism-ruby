class LogLineParser
  def initialize(line)
    @line = line
    @log_level, @message = parse(line)
  end

  def message
    @message
  end

  def log_level
    @log_level
  end

  def reformat
    sprintf("%s (%s)", @message, @log_level)
  end

  private

  # @param [String] line
  # @return [[String, String]]
  def parse(line)
    log_level, message = line.split(': ')
    [log_level.tr('[]', '').downcase, message.strip]
  end
end

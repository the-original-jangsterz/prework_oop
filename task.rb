class Task
  attr_reader :name, :complete
  attr_accessor :priority

  def initialize(name, input_priority)
    @name = name
    @complete = false
    @priority = input_priority
  end

  def complete!
    @complete = true
  end

  def toggle_complete!
    @complete = !@complete
  end
end
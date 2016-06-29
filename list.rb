class List

  def initialize
    @tasks = []
  end

  def tasks
    return @tasks
  end

  def add_task(task)
    @tasks << task
  end

  def number_of_incomplete_tasks
    incomplete_task_names.length
  end

  def incomplete_task_names
    task_names = []
    @tasks.each do |task|
      unless task.complete
        task_names << task.name
      end
    end
    return task_names
  end

  def delete_complete_tasks
    # @tasks.each do |task|
    #   if task.complete
    #     @tasks.delete(task)
    #   end
    # end
    incomplete_tasks = []
    @tasks.each do |task|
      unless task.complete
        incomplete_tasks << task
      end
    end
    @tasks = incomplete_tasks
  end

  def sort_by_priority
    sorted_tasks = @tasks.sort { |a, b| b.priority <=> a.priority }
    # sorted_names = []
    # sorted_tasks.each do |task|
    #   sorted_names << task.name
    # end
    # sorted_names
    sorted_names = sorted_tasks.map { |task| task.name }
  end
end

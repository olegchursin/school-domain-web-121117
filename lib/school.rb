class School

  def initialize(name)
    @name = name
    @roster = {}
  end

  attr_reader :roster

  def add_student(name, i)
    @roster[i] ||= []
    @roster[i] << name
  end

  def grade(i)
    @roster[i]
  end

  def sort
    sorted_roster = {}
    @roster.each do |i, name|
      sorted_roster[i] = name.sort
    end
    sorted_roster
  end

end

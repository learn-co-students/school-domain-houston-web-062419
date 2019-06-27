class School

  attr_accessor :name, :roster
  def initialize (name)
    @roster = {}
    @name = name
  end

  def add_student (name, grade)
    @roster[grade] ||= []
    @roster[grade] << name
  end

  def grade (grade)
    return @roster[grade]# if @roster[grade]
  end

  def sort
    #@roster.sort!
    @roster.each_value {|e| e.sort!}
  end
end

school = School.new("Bayside High School")

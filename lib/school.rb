require 'pry'

class School
  attr_accessor :roster
  def initialize(name)
    @name = name
    @roster = {}
  end

  
  def add_student(name, grade)
    result = @roster.key?(grade)
    if result == true
      @roster[grade] << name
    else
      @roster[grade] = []
      @roster[grade] << name
    end
  end
  
  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.values
    
    # unsorted = @roster[grade]
    # unsorted.sort
  end
  
end


# @roster["name"] = []
#     @roster["name"] << new_value_for_value_array
#     @roster["grade"] = []
#     @roster["grade"] << new_value_for_value_array
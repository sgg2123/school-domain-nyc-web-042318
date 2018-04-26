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
    vals = @roster.values
    vals.map do |names|
      sorted = names.sort
    end
  end
  
end


# @roster["name"] = []
#     @roster["name"] << new_value_for_value_array
#     @roster["grade"] = []
#     @roster["grade"] << new_value_for_value_array
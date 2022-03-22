# frozen_string_literal: true

def calculate(operation)
  operator = operation[1]
  numbers = operation.split(operator).map(&:to_i)
  operators = {
    "+": Sum,
    "-": Sub,
    "*": Multi,
    "/": Divi
  }
  operators[operator.to_sym].execute(numbers)
end

class Sum
  def self.execute(numbers = [])
    numbers[0] + numbers[1]
  end
end

class Sub
  def self.execute(numbers = [])
    numbers[0] - numbers[1]
  end
end

class Multi
  def self.execute(numbers = [])
    numbers[0] * numbers[1]
  end
end

class Divi
  def self.execute(numbers = [])
    numbers[0] / numbers[1]
  end
end

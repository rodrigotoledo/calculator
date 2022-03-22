# frozen_string_literal: true

def calculate(operation)
  operator = operation[1]
  numbers = operation.split(operator).map(&:to_i)
  operators = {
    "+": Sum.new,
    "-": Sub.new,
    "*": Multi.new,
    "/": Divi.new
  }
  operators[operator.to_sym].execute(numbers)
end

class Sum
  def execute(numbers = [])
    numbers[0] + numbers[1]
  end
end

class Sub
  def execute(numbers = [])
    numbers[0] - numbers[1]
  end
end

class Multi
  def execute(numbers = [])
    numbers[0] * numbers[1]
  end
end

class Divi
  def execute(numbers = [])
    numbers[0] / numbers[1]
  end
end

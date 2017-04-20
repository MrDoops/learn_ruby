def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(numbers)
	numbers.inject(0) { |total, a| total + a}
end

def multiply(*numbers)
	numbers.reduce(1, :*)
end

def power(a, b)
	a ** b
end

def factorial(a)
	(1..a).inject(:*) || 1
end
Addition_S3 <- function(x_l = list()) {
  value <- x_l
  attr(value, 'class') <- 'Addition_S3'
  value
}

addNumeric <- function(o_, x_n, y_n) UseMethod('addNumeric', o_)

addNumeric.Addition_S3 <- function(o, x_n, y_n) x_n + y_n



addDouble.Addition_S3 <- function(o, x_d, y_d) x_d + y_d

addInteger.Addition_S3 <- function(o, x_i, y_i) x_i + y_i

divideByZero.Addition_S3 <- function(o, x_n) x_n / 0

generateWarning.Addition_S3 <- function(o, x_ = 0L) 1:3 + 1:7 + x_

generateError.Addition_S3 <- function() stop('generated error')


a <- Addition_S3()
print(addNumeric(a, 3, 4.1))
print(addNumeric.Addition_S3(a, 3, 4.1))
#print(a.addNumeric(3, 4.1))
methods(class = 'Addition_S3')
methods('addNumeric')

print(addDouble.Addition_S3(a, 3, 4.1))

# Reminder
# Calling a method directly is possible, generic or not. Use <methodName>.<className>(object, arguments, ...)
# Calling a generic method is possible. Use <methodName>(object, arguments, ...)
#
# Code transformation
# Need an extraneous argument as first argument to function call, that is the object to consider
#
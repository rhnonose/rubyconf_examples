-- pure function

-- External variable
a = 0
increment =
  a = a + 1 -- accessing external variable
increment -- 1
a -- 0

b = 0
increment num =
  num + 1
increment b -- 1

-- first-class function

-- declare outer function
apply a b fun =
  fun a b

-- declare function to be passed as parameter
add a b = a + b

-- calls the outer function
apply 1 2 (add) -- 3

-- call function with other parameters
apply "first_name" "last_name" (++) -- "first_namelast_name"

-- partial application

-- function with 3 parameters
add a b c = a + b + c

-- call with only one parameter
add1 = add 1 -- <function> : number -> number -> number

-- call the returned function
add2 = add1 2 -- <function> : number -> number

-- call the returned function
add2 3 -- 6


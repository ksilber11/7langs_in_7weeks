// Fibonacci with recursion
fib := method(countLimit, accum, prev, index,
    if(index == nil) then(index := 0)
    if(accum == nil) then(accum := 1)
    if(prev == nil) then(prev := 0)
    newIndex := index + 1
    val := accum + prev
    if(newIndex == countLimit, accum, fib(countLimit, val, accum, newIndex))
)

fib(6) println

// Fibonacci with loops

// Change '/' to return 0 if the denmonitor is zero

// Add slot myAverage to a list to computer average of list
// Raise and exception if an item isn't a number

// Create prototype for two-dimensional list. dim(x, y) would
// create a list of y lists that are x elements long. 
// set(x, y, value) should work and get(x, y)

// Write a transpose method so that get(y, x) is == get(x, y)
// on the original list

// Write and read the matrix from a file.

// Ten tries to guess number 1 - 100
// with hotter and colder hints
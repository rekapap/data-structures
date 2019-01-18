# Data Structures
Exploring different data structure implmentation (using TDD) and use case with Ruby


## Data Structures

### Stack
Properties
  - it has a 'top' function that return the value the top of the stack
  - it has a 'push' function that adds an element to the top of the stack
  - it has a 'pop' function that removes the top element of the stack
  - it has a 'empty?' function that reurn true if the stack is empty

Problems

1. Read a series of positive numbers from the stdin and every time you read one number print out the MAX and the MIN number in the stack, if the number is -1 pop the top of the stack.

```
problems_lib/min_max.rb
```

### Queue
Properties
  - You can add and remove from both ends with constant complexity
  - it has a 'front' function that returns the element on the front
  - it has a 'back' function that return the back element
  - it has an 'enqueue' adds an element to the back of the queue
  - it has a 'dequeue' removes an element from the front of the queue
  - it has an 'empty?' functiont that checks if a queue iss empty or not

## Technologies

- Ruby
- Rspec
- Rubocop


## Tests

Run rspec to test feature and unit tests:
```bash
rspec
```

## Linter

Run rubocop
```bash
rubocop
```


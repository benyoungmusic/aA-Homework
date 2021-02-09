  class Stack
    def initialize
      # create ivar to store stack here!
      @stack = []
    end

    def push(el)
      # adds an element to the stack
      @stack << el
    end

    def pop
      # removes one element from the stack
      @stack.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stack[-1]
    end
  end

#   stack1 = Stack.new
#   stack1.push(5)
#   stack1.push(6)
#   p stack1.peek
#   p stack1.pop
#   p stack1.peek
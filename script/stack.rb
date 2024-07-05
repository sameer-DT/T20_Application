class Stack

    def initialize
        @stack=[]
    end

    def push(value)
        @stack.push(value)
    end

    def pop
        @stack.pop
    end

    def peek
        @stack.last
    end
end
stack=Stack.new
stack.push(1)
stack.push(2)
stack.push(3)
stack.push(4)
stack.push(5)
puts stack
puts stack.pop
puts stack.peek

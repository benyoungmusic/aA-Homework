class Queue
    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue[0]
    end
end

# q = Queue.new
# q.enqueue(5)
# q.enqueue(4)
# q.enqueue(3)
# q.enqueue(2)
# q.enqueue(1)
# p q.peek
# p q.dequeue
# p q.peek
# p q.dequeue
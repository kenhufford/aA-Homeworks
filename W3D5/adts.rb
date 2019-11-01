class Stack
    def initialize
        @stack = []
    end

    def push(el)
        @stack << el
    end

    def pop
        @stack.pop
    end
    
    def peek
        @stack[-1]
    end
end

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

class Map

    def initialize
        array = []
    end

    def set (k, v)
       pair_index = @array.index{|pair| pair[0] == key }
       if pair_index
        @array[pair_index][1] = v
       else
        @array.push([k,v])
       end
       v
    end

    def get(k)
        @array.each {|pair| return pair[1] if pair[0] == key}
        nil
    end

    def delete(k)
        value = get(key)
        @array.reject!{|pair| pair[0] == key}
        value
    end

    def show
        @array
    end

    def show
        deep_dup(@array)
    end

  private

  attr_reader :underlying_array
  
  def deep_dup(array)
    array.map { |ele| ele.is_a?(Array) ? deep_dup(ele) : ele }
  end  
end

end
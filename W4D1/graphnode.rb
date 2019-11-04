require "set"
require "byebug"
class GraphNode
    attr_accessor :value, :neighbors

    def initialize(value)
        @value = value
        neighbors = []
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

def bfs(starting_node, target_value)
    # debugger
    queue = [starting_node]
    visited = Set.new()

    until queue.empty?
        current = queue.shift
        unless visited.include?(current)
            visited.add(current)
            return current.value if current.value == target_value
            # p current.value
            # p current.neighbors
            queue += current.neighbors if current.neighbors != nil
        end
    end
    return nil
end

p bfs(a,"b")
p bfs(a,"d")
p bfs(a,"f")
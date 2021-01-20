module FilesystemObject
  def isValid?
    if @name =~ /[><|:&]/
      return false
    else
      return true
    end
  end
end

module TreeNode
  def bfsprint
    self.bfs { |x| puts x }
  end

  def getChildren
    return @subdir
  end

  def bfs
    q = Queue.new

    self.getChildren.each {|dir| q.enq(dir)}

    while not q.empty? do
      e = q.deq
      
      yield(e)

      e.getChildren.each {|dir| q.enq(dir)}
    end

    q.close
 
  end
end

class Directory
  include FilesystemObject
  include TreeNode

  attr_reader :subdir
  
  def initialize(name, subdir = [])
    @name = name
    @subdir = subdir
  end

  def to_s
    return @name
  end
end

dir = Directory.new("documents", [Directory.new("<private>", [Directory.new("images"), Directory.new("videos")]), Directory.new("work", [Directory.new("secret"), Directory.new("research"), Directory.new("teach|ng")])])

puts dir.to_s

puts dir.isValid?
puts

dir.bfsprint
puts

dir.bfs { |x| puts x }
puts

dir.bfs { |x| puts x if not x.isValid?}

class Array
  def my_each
    i = 0
    while i < self.size
      yield(self[i])
      i += 1
    end
    self
  end

  def my_each_with_index
    i = 0
    while i < self.size
      yield(self[1], i)
      i += 1
    end
    self
  end

  def my_select
    return self unless block_given?
    new_array = []
    my_each { |i| new_array << i if yield(i) }
    new_array
  end

  def my_map_with_yield
    return self unless block_given?
    new_array = []
    my_each { |i| new_array << yield(i) }
    new_array
  end

  def my_map_with_proc my_block
    new_array = [] 
    my_each { |i| new_array << my_block.call(i) }
    puts new_array
  end

end

["uno", "dos", "tres"].my_each do |numero|
  puts numero
end

["uno", "dos", "tres"].my_select do |numero|
  numero == "dos"
end
["uno", "dos", "tres"].my_map_with_yield do |numero|
  numero + "S"
end

bloque = Proc.new { |i| i + "SSSSS" }
["uno", "dos", "tres"].my_map_with_proc(bloque)
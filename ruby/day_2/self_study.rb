# Print the contents of an array of 16 numbers,
# 4 numbers at a time using just `each`.
array = *(1..16)
(0..3).each {|i| puts "-----", array[i*4..(i*4)+3]}


# Now do the same with each_slice in Enumerable.
array.each_slice(4) {|a| puts "-----", a}


# Edit tree class to take nested hashes.
class Tree
  attr_accessor :node_name, :children

  def initialize(name, children = {})
    @node_name = name
    @children = children
  end

  def visit_all(&block)
    visit &block
    children.each do |k, v|
        child = self.class.new(k, v)
        child.visit_all &block
    end
  end

  def visit(&block)
    block.call self
  end
end

ruby_tree = Tree.new('Grandpa', {
    'dad' => {
        'child1' => {}, 
        'child2' => {}
    }, 
    'uncle' => {
        'child3' => {}
    }
})

ruby_tree.visit {|node| puts node.node_name}
ruby_tree.visit_all {|node| puts node.node_name}


# Write a grep that prints the lines of file containing a specefic word.
def find_lines_with_word(word, filename)
    File.foreach(filename).with_index do |line, line_num|
        if line.include? word
            puts "#{line_num} | #{line}"
        end
    end
end

find_lines_with_word("blah", "random_text.txt")

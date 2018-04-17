module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  class Row
    attr_accessor :data
    def initialize(columns, values)
      @data = { }
      columns.each_with_index do |column, i|
        @data[column] = values[i]
      end
    end

    def method_missing(name, *args)
      puts @data[name.to_s]
    end
  end

  module InstanceMethods
    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'
      file = File.new(filename)
      
      @headers = []
      file.gets.chomp.split(', ').each do |header|
        @headers.push(header)
      end
      
      file.each do |row|
        @csv_contents << row.chomp.split(', ')
      end

      @rows = []
      @csv_contents.each do |content_row|
        @rows.push(Row.new(@headers, content_row))
      end
    end 

    def each(&block)
      @rows.each(&block)
    end

    attr_accessor :headers, :csv_contents, :csv_result, :rows
    def initialize
      read
    end
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each {|row| puts row.one}

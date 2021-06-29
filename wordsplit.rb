class WordSplitter

    include Enumerable

    attr_accessor :string
    
    def each
        string.split(" ").each do |word|
            yield word
        end
    end
end

splitter = WordSplitter.new
splitter.string = "salad beefcake corn beef pasta beefy"

p splitter.find_all { |word| word.include?("beef") }
p splitter.reject { |word| word.include?("beef") }
p splitter.map { |word| word.capitalize }
p splitter.count
p splitter.find { |word| word.include?("beef") }
p splitter.first
p splitter.group_by { |word| word.include?("beef") }
p splitter.max_by { |word| word.length }
p splitter.to_a.length
p splitter.map { |word| word.upcase }.to_a
p splitter.sort
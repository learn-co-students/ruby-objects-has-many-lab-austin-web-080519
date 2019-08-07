require_relative "author"
class Post
    attr_accessor :author
    attr_reader :title
    @@all = []
    def initialize(title)
      @title = title
      @author = nil
      @@all << self
    end
    
    def self.all
      @@all
    end

    def author_name
      @author ? @author.name : @author
    end

    
end
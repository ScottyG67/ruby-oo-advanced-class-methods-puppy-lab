# Add your code here
require 'pry'
class Dog
    attr_reader :name

    @@all =[]
    @@all_names=[]
    def initialize(name)
        @name=name
        self.save
    end

    def self.all
        @@all
    end
    def self.clear_all
        @@all = []
        @@all_names =[]
    end
    def self.print_all

        @@all_names.each {|name|puts name}
    end
    def save
        @@all<<self
        @@all_names<<@name
    end
end
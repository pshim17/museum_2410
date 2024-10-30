require 'pry'

class Museum
    attr_reader :name, :exhibits

    def initialize(name)
        @name = name
        @exhibits = []
    end

    def add_exhibit(exhibit)
        @exhibits << exhibit
    end

    def recommend_exhibits(patron)
        recommendations = []

        patron.interests.each do |interest|
            @exhibits.each do |exhibit|
                if exhibit.name == interest
                    recommendations << exhibit
                else 
                    next
                end
            end
        end
        return recommendations
    end
end
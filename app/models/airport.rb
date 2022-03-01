class Airport < ApplicationRecord


    
    def location
        self.city + ", " + self.state
    end

    
end


class Waiter

    attr_accessor :name, :yrs_experience
    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end

    def meals
        Meal.all.select {|meal| meal.waiter == self}
    end

    def best_tipper
        best_tip = 0
        cust = nil
        meals.each do |meal|
            if meal.tip > best_tip
                best_tip = meal.tip
                cust = meal.customer
            end
        end
        cust
    end

end
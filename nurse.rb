class Nurse
    attr_accessor :nurse_name, :nurse_age, :position_nurse
    
    def initialize(nurse_name, nurse_age)
      @nurse_name = nurse_name
      @nurse_age = nurse_age
    end

    def position_nurse
        if @nurse_age >= 40
            "Senior"
        elsif @nurse_age >= 30
            "Mid Level"
        elsif @nurse_age >= 25
            "Junior"
        else
            "Trainee"
        end
    end
end
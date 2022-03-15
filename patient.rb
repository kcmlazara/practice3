class Patient
    attr_accessor :patient_name, :patient_age, :age_class_patient, :nurse
    
    def initialize(patient_name, patient_age)
      @patient_name = patient_name
      @patient_age = patient_age
      @nurse = nil
    end

    def age_class_patient
        case @patient_age
        when 0..18
            "Minor"
        when 18..59
            "Adult"
        else
            "Senior Citizen"
        end
    end
end
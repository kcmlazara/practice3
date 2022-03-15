class Hospital

  attr_accessor :hosptal_name, :patients, :nurses
  
  def initialize(hospital_name)
    @hospital_name = hospital_name
    @patients =[]
    @nurses = []
  end

  def add_nurse(nurse_name, nurse_age)
    @nurses << Nurse.new(nurse_name, nurse_age)
  end

  def add_patient(patient_name, patient_age)
    @patients << Patient.new(patient_name, patient_age)
  end

  def assign_nurse_to_patient(patient_name, nurse_name)

    found_patient = @patients.find {|e| e.patient_name == patient_name}
    found_nurse = @nurses.find {|e| e.nurse_name == nurse_name}

    if found_patient && found_nurse
       found_patient.nurse = found_nurse
       #found_patient.nurse (sineset yung nurse ng patient)
       #.nurse attribute sya sa patient class
      puts "Assigned"
    else
      puts "No patient/nurse found with the given names"
    end
  end

  def show_all_patients
    puts "#{@hospital_name}"
    @patients.each { |s|
      puts "#{s.patient_name} #{s.patient_age} #{s.age_class_patient} --- #{s.nurse&.nurse_name} #{s.nurse&.nurse_age} #{s.nurse&.position_nurse}"
   #Safe Navigation (add & to nurse, to avoid error in returning nil value, kahit walang laman nurse di sya mag error)
    }
  end
end
class Doctor
  
  @@all = []
  
  attr_accessor :name  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(patient_class, date)
    #creates a new appointment, this appointment should know it belongs to this doctor 
  end 
  
  def appointments 
    #will iterate through all appointments, then find those that belong to this doctor
    Appointment.all.find_all{ |appointment| appointment.doctor }
  end 
  
  def patients 
    #will iterate over this doctor's appointments, then collects the patient that belongs to each appointment 
  end 
  
  
  
end 
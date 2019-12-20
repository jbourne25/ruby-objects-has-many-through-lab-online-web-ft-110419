class Patient 
  
  @@all = []
  
  attr_accessor :name  
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  def new_appointment(doctor, date)
    #creates a new appointment, this appointment should know that it belongs to the patient 
    appointment = Appointment.new(doctor, date)
    
  end 
  
  def appointments
    #will iterate through all the appointments, then returns appointments that belong to the patient 
    Appointment.all.include?{ |appointment| appointment.patient }
  end 
  
  def doctors 
    #will iterate over that patient's appointments, then collects the doctor that belongs to each appointment 
    
  end 
  
end 
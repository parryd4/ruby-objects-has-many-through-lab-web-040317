class Appointment
  attr_accessor :patient, :doctor

  def initialize(date,doctor)
    @date = date
    @doctor = doctor
    doctor.appointments << self
    # the appointment belongs to the doctor before
    # the doctor decides to #add_appointment, I guess
  end


end

class Patient
  attr_reader :appointments, :doctors, :name

  def initialize(name)
    @name = name
    @doctors = []
    @appointments = []
  end

  def add_appointment(appointment)
    appointment.patient = self
    @doctors << appointment.doctor
    @appointments << appointment
  end

end

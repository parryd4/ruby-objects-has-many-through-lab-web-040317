class Doctor
  attr_reader :name, :appointments, :patients

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
  end

  def add_appointment(appointment)
    @appointments << appointment
    @patients << appointment.patient

    # redundant, because appointment is initialized with doctor
    #    appointment.doctor = self
  end
end

require 'pry'
class Doctor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all
    end

    def patients
        appointments.select do |pat| pat.doctor == self
        end.map do |pat| pat.patient
        end
    end
end
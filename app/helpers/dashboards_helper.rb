module DashboardsHelper

    def total_employees_registered
        number_to_human(Employee.all.count)
    end

    def total_workplaces_registered
        number_to_human(Workplace.all.count)
    end

    def total_individual_examinations_done
        number_to_human(EmployeeExaminationSession.all.count)
    end

    def total_workplace_examinations_done
        number_to_human(ExaminationSession.all.count)
    end

end

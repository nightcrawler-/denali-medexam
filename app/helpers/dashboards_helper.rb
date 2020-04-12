module DashboardsHelper

    def total_employees_registered
        Employee.all.count
    end

    def total_workplaces_registered
        Workplace.all.count
    end

    def total_individual_examinations_done
        EmployeeExaminationSession.all.count
    end

    def total_workplace_examinations_done
        ExaminationSession.all.count
    end

end

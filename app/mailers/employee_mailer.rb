class EmployeeMailer < ApplicationMailer
    default from: 'your-email@example.com'
  
    def employee_created(employee)
      @employee = employee
      mail(to: 'rajkushwah1225@gmail.com', subject: 'A new employee has been created')
    end
  end
  
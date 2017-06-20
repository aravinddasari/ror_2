class EmployeeController < ActionController::Base
  
  def show_all
  	@result = Employee.all
  	Rails.logger.debug "result is #{@result}"
  	render 'employees/show_all'
  end

  def new
      render 'employees/new'
  end

  def create

    Rails.logger.debug "params are #{params.inspect} "

    emp = Employee.new
    emp.name = params["name"]
    emp.age = params["age"]
    emp.date_of_joining = params["date_of_joining"]
    emp.designation = params["designation"].to_s
    emp.team_lead = params["team_lead"]
    emp.current_project = params["current_project"]
    emp.skills = params["skills"]
    emp.save
    render 'employees/show_all'


  end

  def details
    Rails.logger.debug "params are #{params.inspect} "
    puts params["id"]
    @res= Employee.find(params["id"])
    Rails.logger.debug "result is #{@res}"
    render 'employees/complete_details'
  end


  def show_team_leads
    @result=Employee.select(:team_lead).distinct.pluck(:team_lead)
     Rails.logger.debug "result is #{@result}"
    render 'employees/team_leads'

  end


  def team_details
    Rails.logger.debug "params are #{params.inspect} "
    team_lead = params["name"]
    @res = Employee.where("team_lead = '#{team_lead}'")
    render 'employees/team_details'
  end
end

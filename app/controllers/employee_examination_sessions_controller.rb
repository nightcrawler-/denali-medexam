class EmployeeExaminationSessionsController < ApplicationController
  before_action :set_employee_examination_session, only: [:show, :edit, :update, :destroy]

  # GET /employee_examination_sessions
  # GET /employee_examination_sessions.json
  def index
    @employee_examination_sessions = EmployeeExaminationSession.all
  end

  # GET /employee_examination_sessions/1
  # GET /employee_examination_sessions/1.json
  def show
  end

  # GET /employee_examination_sessions/new
  def new
    @employee_examination_session = EmployeeExaminationSession.new
    # Allows to create employee examination session from existing examination session, might refie later
    @employee_examination_session.examination_session_id = params[:examination_session_id]
  end

  # GET /employee_examination_sessions/1/edit
  def edit
  end

  # POST /employee_examination_sessions
  # POST /employee_examination_sessions.json
  def create
    @employee_examination_session = EmployeeExaminationSession.new(employee_examination_session_params)

    respond_to do |format|
      if @employee_examination_session.save
        format.html { redirect_to @employee_examination_session, notice: 'Employee examination session was successfully created.' }
        format.json { render :show, status: :created, location: @employee_examination_session }
      else
        format.html { render :new }
        format.json { render json: @employee_examination_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_examination_sessions/1
  # PATCH/PUT /employee_examination_sessions/1.json
  def update
    respond_to do |format|
      if @employee_examination_session.update(employee_examination_session_params)
        format.html { redirect_to @employee_examination_session, notice: 'Employee examination session was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee_examination_session }
      else
        format.html { render :edit }
        format.json { render json: @employee_examination_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_examination_sessions/1
  # DELETE /employee_examination_sessions/1.json
  def destroy
    @employee_examination_session.destroy
    respond_to do |format|
      format.html { redirect_to employee_examination_sessions_url, notice: 'Employee examination session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_examination_session
      @employee_examination_session = EmployeeExaminationSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_examination_session_params
      params.require(:employee_examination_session).permit(:bp, :btw, :fp, :lmp, :remarks, :employee_id, :examination_session_id)
    end
end

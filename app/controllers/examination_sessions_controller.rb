class ExaminationSessionsController < ApplicationController
  before_action :set_examination_session, only: [:show, :edit, :update, :destroy]

  # GET /examination_sessions
  # GET /examination_sessions.json
  def index
    @examination_sessions = ExaminationSession.paginate(page: params[:page])
  end

  # GET /examination_sessions/1
  # GET /examination_sessions/1.json
  def show
  end

  # GET /examination_sessions/new
  def new
    @examination_session = ExaminationSession.new
  end

  # GET /examination_sessions/1/edit
  def edit
  end

  # POST /examination_sessions
  # POST /examination_sessions.json
  def create
    @examination_session = ExaminationSession.new(examination_session_params)

    respond_to do |format|
      if @examination_session.save
        format.html { redirect_to @examination_session, notice: 'Examination session was successfully created.' }
        format.json { render :show, status: :created, location: @examination_session }
      else
        format.html { render :new }
        format.json { render json: @examination_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /examination_sessions/1
  # PATCH/PUT /examination_sessions/1.json
  def update
    respond_to do |format|
      if @examination_session.update(examination_session_params)
        format.html { redirect_to @examination_session, notice: 'Examination session was successfully updated.' }
        format.json { render :show, status: :ok, location: @examination_session }
      else
        format.html { render :edit }
        format.json { render json: @examination_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /examination_sessions/1
  # DELETE /examination_sessions/1.json
  def destroy
    @examination_session.destroy
    respond_to do |format|
      format.html { redirect_to examination_sessions_url, notice: 'Examination session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_examination_session
      @examination_session = ExaminationSession.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def examination_session_params
      params.require(:examination_session).permit(:date_of_exam, :examination_type, :workplace_id)
    end
end

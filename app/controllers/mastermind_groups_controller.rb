class MastermindGroupsController < ApplicationController
  before_action :set_mastermind_group, only: [:show, :edit, :update, :destroy, :session_details, :join]

  # GET /mastermind_groups
  # GET /mastermind_groups.json
  def index
    @mastermind_groups = MastermindGroup.all
  end

  # GET /mastermind_groups/1
  # GET /mastermind_groups/1.json
  def show
  end

  def session_details
  end

  # GET /mastermind_groups/new
  def new
    @mastermind_group = MastermindGroup.new
  end

  # GET /mastermind_groups/1/edit
  def edit
  end

  # POST /mastermind_groups
  # POST /mastermind_groups.json
  def create
    @mastermind_group = MastermindGroup.new(mastermind_group_params)

    respond_to do |format|
      if @mastermind_group.save
        format.html { redirect_to @mastermind_group, notice: 'Mastermind group was successfully created.' }
        format.json { render :show, status: :created, location: @mastermind_group }
      else
        format.html { render :new }
        format.json { render json: @mastermind_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mastermind_groups/1
  # PATCH/PUT /mastermind_groups/1.json
  def update
    respond_to do |format|
      if @mastermind_group.update(mastermind_group_params)
        format.html { redirect_to @mastermind_group, notice: 'Mastermind group was successfully updated.' }
        format.json { render :show, status: :ok, location: @mastermind_group }
      else
        format.html { render :edit }
        format.json { render json: @mastermind_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mastermind_groups/1
  # DELETE /mastermind_groups/1.json
  def destroy
    @mastermind_group.destroy
    respond_to do |format|
      format.html { redirect_to mastermind_groups_url, notice: 'Mastermind group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def join
    @user = current_user
    @user.mastermind_groups << MastermindGroup.find(@mastermind_group.id)
    redirect_to root_path, notice: 'Your request has been processed. You should receive an email with an invitation within the next 48hours if accepted. In the meantime please edit you profile so we can better evaluate if you would be a good addition to the session.' 
    #@session = Session.new('user_id' => @user.id, 'mastermind_group_id' => @mastermind_group.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mastermind_group
      @mastermind_group = MastermindGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mastermind_group_params
      params.require(:mastermind_group).permit!
    end

end

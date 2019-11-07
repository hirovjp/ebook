class LearnwordlistsController < ApplicationController
  before_action :set_learnwordlist, only: [:show, :edit, :update, :destroy]

  # GET /learnwordlists
  # GET /learnwordlists.json
  def index
    @learnwordlists = Learnwordlist.all
  end

  # GET /learnwordlists/1
  # GET /learnwordlists/1.json
  def show
  end

  # GET /learnwordlists/new
  def new
    @learnwordlist = Learnwordlist.new
  end

  # GET /learnwordlists/1/edit
  def edit
  end

  # POST /learnwordlists
  # POST /learnwordlists.json
  def create
    @learnwordlist = Learnwordlist.new(learnwordlist_params)

    respond_to do |format|
      if @learnwordlist.save
        format.html { redirect_to @learnwordlist, notice: 'Learnwordlist was successfully created.' }
        format.json { render :show, status: :created, location: @learnwordlist }
      else
        format.html { render :new }
        format.json { render json: @learnwordlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /learnwordlists/1
  # PATCH/PUT /learnwordlists/1.json
  def update
    respond_to do |format|
      if @learnwordlist.update(learnwordlist_params)
        format.html { redirect_to @learnwordlist, notice: 'Learnwordlist was successfully updated.' }
        format.json { render :show, status: :ok, location: @learnwordlist }
      else
        format.html { render :edit }
        format.json { render json: @learnwordlist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /learnwordlists/1
  # DELETE /learnwordlists/1.json
  def destroy
    @learnwordlist.destroy
    respond_to do |format|
      format.html { redirect_to learnwordlists_url, notice: 'Learnwordlist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_learnwordlist
      @learnwordlist = Learnwordlist.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def learnwordlist_params
      params.require(:learnwordlist).permit(:user_id, :wordlist_id)
    end
end

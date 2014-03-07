class AsController < ApplicationController
  before_action :set_a, only: [:show, :edit, :update, :destroy]

  # GET /as
  # GET /as.json
  def index
    @as = A.all
    @bs = B.all
  end

  # GET /as/1
  # GET /as/1.json
  def show
  end

  # GET /as/new
  def new
    @a = A.new
  end

  # GET /as/1/edit
  def edit
  end

  # POST /as
  # POST /as.json
  def create
    @a = A.new(a_params)

    respond_to do |format|
      if @a.save
        format.html { redirect_to root_url, notice: 'A was successfully created.' }
        format.json { render action: 'show', status: :created, location: @as }
      else
        format.html { render action: 'new' }
        format.json { render json: @a.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /as/1
  # PATCH/PUT /as/1.json
  def update
    respond_to do |format|
      if @a.update(a_params)
        format.html { redirect_to @a, notice: 'A was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @a.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /as/1
  # DELETE /as/1.json
  def destroy
    @a.destroy
    respond_to do |format|
      format.html { redirect_to as_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_a
      @a = A.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def a_params
      params.require(:a).permit(:name)
    end
end

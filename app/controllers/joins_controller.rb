class JoinsController < ApplicationController
  before_action :set_join, only: %i[show edit update destroy]

  # GET /joins or /joins.json
  def index
    @joins = Join.all
  end

  # GET /joins/1 or /joins/1.json
  def show; end

  # GET /joins/new
  def new
    @join = Join.new
  end

  # GET /joins/1/edit
  def edit; end

  # POST /joins or /joins.json
  def create
    @join = Join.new(join_params)

    respond_to do |format|
      if @join.save
        format.html { redirect_to join_url(@join), notice: 'Join was successfully created.' }
        format.json { render :show, status: :created, location: @join }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joins/1 or /joins/1.json
  def update
    respond_to do |format|
      if @join.update(join_params)
        format.html { redirect_to join_url(@join), notice: 'Join was successfully updated.' }
        format.json { render :show, status: :ok, location: @join }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joins/1 or /joins/1.json
  def destroy
    @join.destroy

    respond_to do |format|
      format.html { redirect_to joins_url, notice: 'Join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_join
    @join = Join.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def join_params
    params.require(:join).permit(:category_id, :expense_id)
  end
end

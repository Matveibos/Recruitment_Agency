class TechstacksController < ApplicationController
  before_action :set_tech_stack, only: %i(show edit update destroy)

  # GET /techstacks or /techstacks.json
  def index
    @tech_stacks = Techstack.all
  end

  # GET /techstacks/1 or /techstacks/1.json
  def show
  end

  # GET /techstacks/new
  def new
    @tech_stack = Techstack.new
    @tech_stack.entity_id = params[:entity_id]
    @tech_stack.entity_type = params[:entity_type]
  end

  # GET /techstacks/1/edit
  def edit
  end

  # POST /techstacks or /techstacks.json
  def create
    @tech_stack = Techstack.new(tech_stack_params)
    respond_to do |format|
      if @tech_stack.save
        format.html { redirect_to @tech_stack, notice: "Tech stack was successfully created." }
        format.json { render :show, status: :created, location: @tech_stack }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tech_stack.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /techstacks/1 or /techstacks/1.json
  def update
    respond_to do |format|
      if @tech_stack.update(tech_stack_params)
        format.html { redirect_to @tech_stack, notice: "Tech stack was successfully updated." }
        format.json { render :show, status: :ok, location: @tech_stack }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tech_stack.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /techstacks/1 or /techstacks/1.json
  def destroy
    @tech_stack.destroy
    respond_to do |format|
      format.html { redirect_to techstacks_url, notice: "Tech stack was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_tech_stack
    @tech_stack = Techstack.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def tech_stack_params
    params.require(:techstack).permit(:name, :level, :entity_id, :entity_type)
  end
end

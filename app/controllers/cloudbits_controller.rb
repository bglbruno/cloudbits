class CloudbitsController < ApplicationController
  before_action :set_cloudbit, only: [:show, :edit, :update, :destroy]

  # GET /cloudbits
  def index
    @cloudbits = Cloudbit.all
  end

  # GET /cloudbits/1
  def show
  end

  # GET /cloudbits/new
  def new
    @cloudbit = Cloudbit.new
  end

  # GET /cloudbits/1/edit
  def edit
  end

  # POST /cloudbits
  def create
    @cloudbit = Cloudbit.new(cloudbit_params)

    if @cloudbit.save
      redirect_to @cloudbit, notice: 'Cloudbit was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /cloudbits/1
  def update
    if @cloudbit.update(cloudbit_params)
      redirect_to @cloudbit, notice: 'Cloudbit was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /cloudbits/1
  def destroy
    @cloudbit.destroy
    redirect_to cloudbits_url, notice: 'Cloudbit was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloudbit
      @cloudbit = Cloudbit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cloudbit_params
      params.require(:cloudbit).permit(:name)
    end
end

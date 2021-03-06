class CloudbitsController < ApplicationController

  def index
    @cloudbits = Cloudbit.all
  end

  def download
    @cloudbit = Cloudbit.find(params[:cloudbit_id])
    redirect_to @cloudbit.file.url
  end

  def new
    @cloudbit = Cloudbit.new
  end

  def create
    @cloudbit = Cloudbit.new(cloudbit_params)

    if @cloudbit.save
      redirect_to root_path, notice: I18n.t(:success, scope: :messages)
    else
      render :new
    end
  end

  def destroy
    @cloudbit = Cloudbit.find(params[:id])
    @cloudbit.file = nil
    @cloudbit.destroy
    redirect_to cloudbits_url, notice: I18n.t(:destroy, scope: :messages)
  end

  private
    def cloudbit_params
      params.require(:cloudbit).permit(:file)
    end
end

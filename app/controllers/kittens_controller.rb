class KittensController < ApplicationController
  def index
    @kittens = Kitten.all

    respond_to do |format|
      format.html
      format.json { render :json => @kittens }
    end
  end

  def show
    @kitten = Kitten.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render :json => @kitten }
    end
  end

  def new
    @kitten = Kitten.new
    @select_options = [["low", "low"], ["medium", "medium"], ["high", "high"]]
  end

  def create
    @kitten = Kitten.new(kitten_params)

    if @kitten.save
      flash[:notice] = "Kitten created, thanks!"
      redirect_to kitten_path(@kitten)
    else
      flash[:alert] = "We ran into difficulty creating this kitten"
      p @kitten.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @kitten = Kitten.find(params[:id])
  end

  def update
    @kitten = Kitten.find(params[:id])
    if @kitten.update(kitten_params)
      flash[:notice] = "Kitten updated, thanks!"
      redirect_to kitten_path(@kitten)
    else
      flash[:alert] = "We ran into difficulty updating this kitten"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @kitten = Kitten.find(params[:id])
    @kitten.destroy

    flash[:notice] = "Kitten deleted"
    redirect_to kittens_path, status: :see_other
  end

  private

    def kitten_params
      params.require(:kitten).permit(:name, :age, :softness, :cuteness)
    end
end

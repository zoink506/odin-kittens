class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
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
      flash[:alert] = "Error creating kitten"
      p @kitten.errors.full_messages
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def kitten_params
      params.require(:kitten).permit(:name, :age, :softness, :cuteness)
    end
end

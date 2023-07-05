class KittensController < ApplicationController
  def index
    @kittens = Kitten.all
  end

  def show
    @kitten = Kitten.find(params[:id])
  end

  def new
    @kitten = Kitten.new
    @softness_options = [["soft", "soft"], ["medium", "medium"], ["not soft", "not soft"]]
    @cuteness_options = [["cute", "cute"], ["medium", "medium"], ["ugly", "ugly"]]
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

class ColorPalettesController < ApplicationController
  def index
    @color_palettes = ColorPalette.all
    render 'index'
  end
  def show
    @color_palette = ColorPalette.find(params[:id])
    render 'show'
  end
  def new
    @color_palette = ColorPalette.new
    render 'new'
  end
  def edit
    @color_palette = ColorPalette.find(params[:id])
    render 'edit'
  end
  def create
    @color_palette = ColorPalette.new(color_palette_params)
    if @color_palette.save
      redirect_to @color_palette, notice: 'Color palette was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @color_palette = ColorPalette.find(params[:id])
    if @color_palette.update(color_palette_params)
      redirect_to @color_palette, notice: 'Color palette was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @color_palette = ColorPalette.find(params[:id])
    @color_palette.destroy
    redirect_to color_palettes_url, notice: 'Color palette was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def color_palette_params
    params.require(:color_palette).permit(:name, :description, :picture)
  end

end

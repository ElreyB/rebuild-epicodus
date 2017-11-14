class SectionsController < ApplicationController

  def new
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new
  end

  def show
    @section = Section.find(params[:id])
  end

  def edit
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
  end

  def create
    @chapter = Chapter.find(params[:chapter_id])
    @section = @chapter.sections.new(section_params)
    if @section.save
      flash[:notice] = "Your section has been saved!"
      redirect_to chapter_path(@chapter)
    else
      render :new
    end
  end

  def update
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
    if @section.update(section_params)
      flash[:notice] = "Your section updated!"
      redirect_to chapter_path(@chapter)
    else
      render :edit
    end
  end

  def destroy
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to chapter_path(@chapter)
  end

private
  def section_params
    params.require(:section).permit(:name, :number)
  end
end

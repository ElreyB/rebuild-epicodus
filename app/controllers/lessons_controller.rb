class LessonsController < ApplicationController

  def new
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new
  end

  def show
    @chapter = Chapter.find(params[:chapter_id])
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def edit
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
  end

  def create
    @section = Section.find(params[:section_id])
    @lesson = @section.lessons.new(lesson_params)
    if @lesson.save
      flash[:notice] = "Your lesson has been saved!"
      redirect_to section_path(@section)
    else
      render :new
    end
  end

  def update
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    if @lesson.update(lesson_params)
      flash[:notice] = "Your lesson updated!"
      redirect_to section_path(@section)
    else
      render :edit
    end
  end

  def destroy
    @section = Section.find(params[:section_id])
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    redirect_to section_path(@section)
  end

private
  def lesson_params
    params.require(:lesson).permit(:name, :number, :text)
  end

end

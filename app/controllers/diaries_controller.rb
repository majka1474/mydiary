class DiariesController < ApplicationController
  def index
    @diaries = Diary.all
  end

  def show
  end

  def new
    @diary = Diary.new
  end

  def create
    @diary = Diary.new(diary_params)

    if @diary.save
      redirect_to diaries_url, notice: "日記「#{@diary.title}」を追加しました。"
    else
      render :new
    end
  end

  def edit
  end

  private

    def diary_params
      params.require(:diary).permit(:title)
    end
end

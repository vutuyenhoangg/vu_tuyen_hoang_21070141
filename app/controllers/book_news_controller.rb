class BookNewsController < ApplicationController
  before_action :set_book_news, only: %i[ show edit update destroy ]

  # GET /book_news or /book_news.json
  def index
    @book_news = BookNew.all
  end

  # GET /book_news/1 or /book_news/1.json
  def show
  end

  # GET /book_news/new
  def new
    @book_news = BookNew.new
  end

  # GET /book_news/1/edit
  def edit
  end

  # POST /book_news or /book_news.json
  def create
    @book_news = BookNew.new(book_news_params)

    respond_to do |format|
      if @book_news.save
        format.html { redirect_to book_news_url(@book_news), notice: "Book new was successfully created." }
        format.json { render :show, status: :created, location: @book_news }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @book_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_news/1 or /book_news/1.json
  def update
    respond_to do |format|
      if @book_news.update(book_news_params)
        format.html { redirect_to book_news_url(@book_news), notice: "Book new was successfully updated." }
        format.json { render :show, status: :ok, location: @book_news }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @book_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_news/1 or /book_news/1.json
  def destroy
    @book_news.destroy

    respond_to do |format|
      format.html { redirect_to book_news_url, notice: "Book new was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_news
      @book_news = BookNew.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def book_news_params
      params.require(:book_news).permit(:title, :author, :publisher, :year, :borrowed_at, :available, :subject_id)
    end
end

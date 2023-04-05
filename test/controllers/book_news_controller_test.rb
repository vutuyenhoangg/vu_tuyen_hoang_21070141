require "test_helper"

class BookNewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_news = book_news(:one)
  end

  test "should get index" do
    get book_news_url
    assert_response :success
  end

  test "should get new" do
    get new_book_news_url
    assert_response :success
  end

  test "should create book_news" do
    assert_difference("BookNew.count") do
      post book_news_url, params: { book_news: { author: @book_news.author, available: @book_news.available, borrowed_at: @book_news.borrowed_at, publisher: @book_news.publisher, subject_id: @book_news.subject_id, title: @book_news.title, year: @book_news.year } }
    end

    assert_redirected_to book_news_url(BookNew.last)
  end

  test "should show book_news" do
    get book_news_url(@book_news)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_news_url(@book_news)
    assert_response :success
  end

  test "should update book_news" do
    patch book_news_url(@book_news), params: { book_news: { author: @book_news.author, available: @book_news.available, borrowed_at: @book_news.borrowed_at, publisher: @book_news.publisher, subject_id: @book_news.subject_id, title: @book_news.title, year: @book_news.year } }
    assert_redirected_to book_news_url(@book_news)
  end

  test "should destroy book_news" do
    assert_difference("BookNew.count", -1) do
      delete book_news_url(@book_news)
    end

    assert_redirected_to book_news_url
  end
end

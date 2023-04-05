require "application_system_test_case"

class BookNewsTest < ApplicationSystemTestCase
  setup do
    @book_news = book_news(:one)
  end

  test "visiting the index" do
    visit book_news_url
    assert_selector "h1", text: "Book news"
  end

  test "should create book new" do
    visit book_news_url
    click_on "New book new"

    fill_in "Author", with: @book_news.author
    check "Available" if @book_news.available
    fill_in "Borrowed at", with: @book_news.borrowed_at
    fill_in "Publisher", with: @book_news.publisher
    fill_in "Subject", with: @book_news.subject_id
    fill_in "Title", with: @book_news.title
    fill_in "Year", with: @book_news.year
    click_on "Create Book new"

    assert_text "Book new was successfully created"
    click_on "Back"
  end

  test "should update Book new" do
    visit book_news_url(@book_news)
    click_on "Edit this book new", match: :first

    fill_in "Author", with: @book_news.author
    check "Available" if @book_news.available
    fill_in "Borrowed at", with: @book_news.borrowed_at
    fill_in "Publisher", with: @book_news.publisher
    fill_in "Subject", with: @book_news.subject_id
    fill_in "Title", with: @book_news.title
    fill_in "Year", with: @book_news.year
    click_on "Update Book new"

    assert_text "Book new was successfully updated"
    click_on "Back"
  end

  test "should destroy Book new" do
    visit book_news_url(@book_news)
    click_on "Destroy this book new", match: :first

    assert_text "Book new was successfully destroyed"
  end
end

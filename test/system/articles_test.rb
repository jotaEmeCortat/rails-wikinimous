require "application_system_test_case"

class ArticlesTest < ApplicationSystemTestCase
  setup do
    @article = articles(:one)
  end

  test "visiting the index" do
    visit articles_url
    assert_text @article.title
  end

  test "showing an Article" do
    visit article_url(@article)
    assert_text @article.title
    assert_text @article.content
    puts "\e[32mArticle show\e[0m"
  end

  test "creating an Article" do
    visit articles_url
    click_on "New Article"

    fill_in "Title", with: "New Article Title"
    fill_in "Content", with: "New Article Content"
    click_on "Create Article"
    puts "\e[32mArticle created\e[0m"
  end

  test "updating an Article" do
    visit article_url(@article)
    find('a[href="' + edit_article_path(@article) + '"]').click

    fill_in "Title", with: "Updated Article Title"
    fill_in "Content", with: "Updated Article Content"
    click_on "Update Article"
    puts "\e[32mArticle updated\e[0m"
  end

  test "destroying an Article" do
    visit article_url(@article)
    page.accept_confirm do
      find('a[data-turbo-method="delete"]').click
    end
    puts "\e[32mArticle destroyed\e[0m"
  end
end

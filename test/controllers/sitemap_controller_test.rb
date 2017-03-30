require 'test_helper'

class SitemapControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sitemap_index_url
    assert_response :success
  end

end

#from http://aspiringwebdev.com/sitemaps-in-rails-in-five-minutes/
require 'spec_helper'

feature 'Sitemap' do
  scenario 'shows site map' do
    post = create(:post, :title => "my post")
    visit "sitemap.xml"
    expect(page).to have_content "my post"
  end
end

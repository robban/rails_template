require "spec_helper"

feature 'Landing page' do

  scenario 'Landing page loads and has site name in title' do
    visit '/'
    expect(page).to have_title "Site title"
    expect(page).to have_content('Landing page content')
  end

end

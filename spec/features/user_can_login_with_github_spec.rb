require "rails_helper"

feature "user visits '/'" do
  scenario "logs in with github" do
    stub_omniauth

    visit "/"

    click_on "Login with GitHub"

    expect(current_path).to eq(dashboard_index_path)
  end
end

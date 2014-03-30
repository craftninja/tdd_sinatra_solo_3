require 'spec_helper'
require 'capybara/rspec'
require_relative '../task_app'
Capybara.app = TaskApp

feature "User can manage tasks" do
  scenario "User is welcomed to homepage" do
    visit '/'
    expect(page).to have_content("Welcome")
  end
end
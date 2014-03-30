require 'spec_helper'
require 'capybara/rspec'
require_relative '../task_app'
Capybara.app = TaskApp

feature "User can manage tasks" do
  scenario "User can add a task to the homepage" do
    visit '/'
    click_on "Add a task"
    fill_in "task", with: "Start a bike gang"
    click_on "Create task"
    expect(page).to have_content("Welcome")
    expect(page).to have_content("Start a bike gang")
  end
end
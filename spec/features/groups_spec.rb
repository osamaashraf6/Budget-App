require 'rails_helper'

RSpec.describe "Groups", type: :feature do
  describe "GET /groups" do
    before do
      visit groups_path
    end

    it "displays the 'groups' header" do
      expect(page).to have_css("h5", text: "groups")
    end

    it "displays a list of groups" do
      # assuming there are already groups in the database
      expect(page).to have_css(".group", count: Group.count)
    end

    it "displays a 'New group' button" do
      expect(page).to have_link("New group", href: new_group_path)
    end
  end
end

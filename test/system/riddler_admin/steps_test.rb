require "application_system_test_case"

module RiddlerAdmin
  class StepsTest < ApplicationSystemTestCase
    setup do
      @step = riddler_admin_steps(:one)
    end

    test "visiting the index" do
      visit steps_url
      assert_selector "h1", text: "Steps"
    end

    test "creating a Step" do
      visit steps_url
      click_on "New Step"

      fill_in "Guid", with: @step.guid
      fill_in "Name", with: @step.name
      fill_in "Position", with: @step.position
      fill_in "Stepable", with: @step.stepable_id
      fill_in "Stepable Type", with: @step.stepable_type
      fill_in "Type", with: @step.type
      click_on "Create Step"

      assert_text "Step was successfully created"
      click_on "Back"
    end

    test "updating a Step" do
      visit steps_url
      click_on "Edit", match: :first

      fill_in "Guid", with: @step.guid
      fill_in "Name", with: @step.name
      fill_in "Position", with: @step.position
      fill_in "Stepable", with: @step.stepable_id
      fill_in "Stepable Type", with: @step.stepable_type
      fill_in "Type", with: @step.type
      click_on "Update Step"

      assert_text "Step was successfully updated"
      click_on "Back"
    end

    test "destroying a Step" do
      visit steps_url
      page.accept_confirm do
        click_on "Destroy", match: :first
      end

      assert_text "Step was successfully destroyed"
    end
  end
end

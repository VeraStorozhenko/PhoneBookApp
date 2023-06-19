require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit contacts_path
    assert_selector "h2", text: "Contacts"
  end

  test "should create Contact" do
    visit contacts_path

    click_on "+ Add Contact"

    fill_in "first_name", with: "Peter"
    fill_in "last_name", with: "Pen"
    fill_in "telephone", with: "321"

    click_on "Add Contact"

    assert redirect_to contacts_path
  end
end

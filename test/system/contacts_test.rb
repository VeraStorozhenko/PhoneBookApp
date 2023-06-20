require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  test "viewing the index" do
    visit contacts_path
    assert_selector "h2", text: "Contacts"
  end

  test "should create Contact" do
    visit contacts_path

    click_on "+ Add Contact"

    fill_in "contact_first_name", with: "Peter"
    fill_in "contact_last_name", with: "Pen"
    fill_in "contact_telephone", with: "321"

    click_on "Add Contact"

    page.status_code.should == 302
  end
end

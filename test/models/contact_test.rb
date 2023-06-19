require "test_helper"

class ContactTest < ActiveSupport::TestCase
  test "should not save contact without first_name" do
    contact = Contact.new
    assert_not contact.save, "Saved the contact without a first_name"
  end

  test "should not save contact without last_name" do
    contact = Contact.new
    assert_not contact.save, "Saved the contact without a last_name"
  end

  test "should not save contact without telephone" do
    contact = Contact.new
    assert_not contact.save, "Saved the contact without a telephone"
  end

  test "it saves contact" do
    contact = Contact.new(first_name: "Ivan", last_name: "Ivanovich", telephone: 123)
    assert contact.save, "It saves contact if validation passed"
  end
end

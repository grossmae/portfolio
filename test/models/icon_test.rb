require 'test_helper'

class IconTest < ActiveSupport::TestCase
  
  def setup
    @icon = Icon.new(image_url: "test.png")
  end

  test "should be valid" do
    assert @icon.valid?
  end

  test "should have image_url" do
    @icon.image_url = ""
    assert_not @icon.valid?
  end

  test "should have image url for image_url" do
    @icon.image_url = "test.file"
    assert_not @icon.valid?
  end
end

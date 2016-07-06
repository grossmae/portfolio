require 'test_helper'

class ScreenshotTest < ActiveSupport::TestCase
  
  def setup
    @screenshot = Screenshot.new(image_url: "test.png")
  end

  test "should be valid" do
    assert @screenshot.valid?
  end

  test "should have image_url" do
    @screenshot.image_url = ""
    assert_not @screenshot.valid?
  end

  test "should have image url for image_url" do
    @screenshot.image_url = "test.file"
    assert_not @screenshot.valid?
  end

end

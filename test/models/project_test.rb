require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  
  def setup
    @project = Project.new(title: "Example Project", subtitle: "This project will test the limits", description: "This is a test app.  It tests everything.  Not really though.")
    @project.screenshots << Screenshot.new
    @project.icon = Icon.new
  end

  test "should be valid" do
    assert @project.valid?
  end

  test "title should be present" do
    @project.title = "    "
    assert_not @project.valid?
  end

  test "subtitle should be present" do
    @project.subtitle = "    "
    assert_not @project.valid?
  end

  test "description should be present" do
    @project.description = "    "
    assert_not @project.valid?
  end

  test "icon should be present" do
    @project.icon = nil
    assert_not @project.valid?
  end

  test "screenshot should be present" do
    @project.screenshots = []
    assert_not @project.valid?
  end
end

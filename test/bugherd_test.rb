require 'test_helper'

class BugHerdTest < ActionController::TestCase
  test "truth" do
    assert_kind_of Module, BugHerd
  end

  def setup
    @controller = MainController.new
  end

  test "bugherd embedded" do
    get :index
    assert_response :success
    assert_select 'title', 'Dummy'
    assert_select 'head', /chicken/
  end
end

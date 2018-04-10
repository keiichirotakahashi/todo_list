require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  include ApplicationHelper

  def setup
    @tasks = tasks
  end
  
  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "ToDoリスト"
  end

  test "all tasks" do
    get root_path
    assert_template 'home/index'
    @tasks.each do |task|
      assert_match task.name, response.body
    end
  end
end

require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  
  def setup
  	@base_title = "ToDoリスト"
    @task = tasks(:one)
  end

  test "should get edit" do
    get edit_task_path(@task)
    assert_response :success
    assert_select "title", "ToDoの編集 | #{@base_title}"
  end

  test "should get search" do
    get search_path
    assert_response :success
    assert_select "title", "ToDoの検索 | #{@base_title}"
  end
end

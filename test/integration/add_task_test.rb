require 'test_helper'

class AddTaskTest < ActionDispatch::IntegrationTest
  
  test "invalid task" do
    get root_path
    assert_select 'form[action="/tasks"]'
    assert_no_difference 'Task.count' do
      post tasks_path, params: { task: { name: " ",
                            due_date: Time.zone.local(2018, 4, 30) } }
    end
    assert_template 'home/index'
    assert_select 'div.error-messages'
  end

  test "valid task" do
    get root_path
    assert_difference 'Task.count', 1 do
      post tasks_path, params: { task: { name: "テストを書く",
                            due_date: Time.zone.local(2018, 4, 30) } }
    end
    assert_redirected_to root_url
    follow_redirect!
    assert_template 'home/index'
  end
end

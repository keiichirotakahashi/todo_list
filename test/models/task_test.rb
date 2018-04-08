require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  
  def setup
    @task = Task.new(name: "テストコードを書く", status: 0,
                due_date: Time.zone.local(2018, 4, 30))
  end

  test "should be valid" do
    assert @task.valid?
  end

  test "name should be present" do
    @task.name = "  "
    assert_not @task.valid?
  end

  test "status should be present" do
  	@task.status = " "
  	assert_not @task.valid?
  end

  test "due_date should be present" do
    @task.due_date = " "
    assert_not @task.valid?
  end

  test "name should not be too long" do
    @task.name = "a" * 256
    assert_not @task.valid?
  end
end

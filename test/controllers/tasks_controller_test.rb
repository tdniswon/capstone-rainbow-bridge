require 'test_helper'

class TasksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @task = tasks(:one)
  end

  test "should get index" do
    get tasks_url
    assert_response :success
  end

  test "should get new" do
    get new_task_url
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post tasks_url, params: { task: { task_description: @task.task_description, task_due_date: @task.task_due_date, task_finish_date: @task.task_finish_date, task_name: @task.task_name, task_start_date: @task.task_start_date, task_status_id: @task.task_status_id } }
    end

    assert_redirected_to task_url(Task.last)
  end

  test "should show task" do
    get task_url(@task)
    assert_response :success
  end

  test "should get edit" do
    get edit_task_url(@task)
    assert_response :success
  end

  test "should update task" do
    patch task_url(@task), params: { task: { task_description: @task.task_description, task_due_date: @task.task_due_date, task_finish_date: @task.task_finish_date, task_name: @task.task_name, task_start_date: @task.task_start_date, task_status_id: @task.task_status_id } }
    assert_redirected_to task_url(@task)
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete task_url(@task)
    end

    assert_redirected_to tasks_url
  end
end

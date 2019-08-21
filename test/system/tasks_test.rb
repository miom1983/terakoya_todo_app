require "application_system_test_case"

class TasksTest < ApplicationSystemTestCase
  setup do
    @task = tasks(:one)
  end

  test "visiting the index" do
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

  test "creating a Task" do
    visit tasks_url
    click_on "New Task"

    fill_in "タスクの内容", with: @task.タスクの内容
    fill_in "更新日時", with: @task.更新日時
    fill_in "登録した人", with: @task.登録した人
    fill_in "登録日時", with: @task.登録日時
    click_on "Create Task"

    assert_text "Task was successfully created"
    click_on "Back"
  end

  test "updating a Task" do
    visit tasks_url
    click_on "Edit", match: :first

    fill_in "タスクの内容", with: @task.タスクの内容
    fill_in "更新日時", with: @task.更新日時
    fill_in "登録した人", with: @task.登録した人
    fill_in "登録日時", with: @task.登録日時
    click_on "Update Task"

    assert_text "Task was successfully updated"
    click_on "Back"
  end

  test "destroying a Task" do
    visit tasks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Task was successfully destroyed"
  end
end

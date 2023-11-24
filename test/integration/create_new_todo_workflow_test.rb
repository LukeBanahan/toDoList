require "test_helper"

class CreateTodoWorkFlowTest < ActionDispatch::IntegrationTest

    test "Should try to create a new todo that is completed" do
        get "/todos/new"
        assert response :success

        post "/todos", params: {todos: {title: "Paint the house", completed: true}}
        assert_response :found
    end
end
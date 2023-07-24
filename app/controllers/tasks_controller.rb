class TasksController < ApplicationController
    def create
        todo = tasks.create(todo_params)
        if todo.valid?
            app_response(status: :created, data: todo)
        else
            app_response(status: :unprocessable_entity, data: todo.errors, message: 'failed')
        end
    end

    def update
        todo = tasks.find(params[:id]).update(todo_params)
        if todo
            app_response(data: { info: 'updated todo successfully' })
        else
            app_response(message: 'failed', data: { info: 'something went wrong. could not update todo' }, status: :unprocessable_entity)
        end
    end

    def destroy
        tasks.find(params[:id]).destroy
        app_response(message: 'success', data: { info: 'deleted todo successfully' }, status: 204)
    end

    def index
        todos = tasks.all
        app_response(message: 'success', data: todos)
    end

    private

    def todo_params
        params.permit(:title, :description, :status, :due_date)
    end
end

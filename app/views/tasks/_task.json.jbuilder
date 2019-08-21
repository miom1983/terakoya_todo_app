json.extract! task, :id, :登録した人, :タスクの内容, :登録日時, :更新日時, :created_at, :updated_at
json.url task_url(task, format: :json)

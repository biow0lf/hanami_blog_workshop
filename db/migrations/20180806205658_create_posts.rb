Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id

      column :title, String
      column :body, String
      column :html, String

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end

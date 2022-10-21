Sequel.migration do
  change do
    create_table(:geeks, :ignore_index_errors =>true) do
      primary_key :id
      Numeric :job_id, null: false
      Numeric :geek_id, null: false
      Boolean :read, default =>false
      Boolean :invited, default =>false

      DateTime :created_at
      DateTime :updated_at

      index :id
    end
  end
end

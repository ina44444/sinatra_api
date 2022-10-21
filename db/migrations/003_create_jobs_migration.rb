Sequel.migration do
  change do
    create_table(:geeks, :ignore_index_errors =>true) do
      primary_key :id
      String :name, null: false
      String :place, text:true, null: false
      Numeric :company_id

      DateTime :created_at
      DateTime :updated_at

      index :id
    end
  end
end

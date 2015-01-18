# migrations/001_BaseSchema.rb
 
Sequel.migration do
  up do
    create_table(:users) do
      primary_key :id
      String      :name,           :size => 100, :null => false
      String      :email,          :size => 60, :null => false
      DateTime    :created_at,                 :null => false
    end

    create_table(:tests) do
      primary_key :id
      foreign_key :user_id, :users
      Integer :test, :null => false
      Integer :file1, :null => false
      Integer :file2, :null => false
      Integer :file3, :null => false
      Integer :file4, :null => false
      Integer :hidden, :null => false
    end
  end
 
  down do
    drop_table(:tests => true)
  end
end


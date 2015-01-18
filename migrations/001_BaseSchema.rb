# migrations/001_BaseSchema.rb
 
Sequel.migration do
  up do
    create_table(:tests) do
      primary_key :id
      String      :email,          :size => 60, :null => false
      DateTime    :created_at,                 :null => false
      String      :test1, :size => 20, :null => false
      String      :test2, :size => 20, :null => false
    end
  end
 
  down do
    drop_table(:tests => true)
  end
end


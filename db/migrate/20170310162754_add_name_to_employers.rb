class AddNameToEmployers < ActiveRecord::Migration[5.0]
  def change
    add_column :employers, :emp_firstname, :string
    add_column :employers, :emp_lastname, :string
    add_column :employers, :emp_mobile, :integer
    add_column :employers, :emp_email, :string
    add_column :employers, :emp_add1, :string
    add_column :employers, :emp_add2, :string
    add_column :employers, :emp_city, :string
    add_column :employers, :emp_state, :string
  end
end

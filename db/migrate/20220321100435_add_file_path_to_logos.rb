class AddFilePathToLogos < ActiveRecord::Migration[7.0]
  def change
    add_column :logos, :file_path, :string
  end
end

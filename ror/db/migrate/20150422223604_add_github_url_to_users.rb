class AddGithubUrlToUsers < ActiveRecord::Migration
  def change
    add_column :users, :github_url, :string
    add_index :users, :github_url, unique: true
  end
end

class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.string     :name,           null: false
      t.text       :overview,       null: false
      t.text       :git_url,        null: false
      t.text       :trello_url,     null: false
      t.references :user,           foreign_key: true
      t.timestamps
    end
  end
end

class CreateCookies < ActiveRecord::Migration[5.0]
  def change
    create_table :cookies do |t|
      t.text :content

      t.timestamps
    end
  end
end

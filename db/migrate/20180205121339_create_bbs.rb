class CreateBbs < ActiveRecord::Migration[5.1]
  def change
    create_table :bbs do |t|
      t.string :name
      t.string :comment
      t.datetime :commented

      t.timestamps
    end
  end
end

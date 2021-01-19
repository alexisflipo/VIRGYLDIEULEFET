class CreateCarousels < ActiveRecord::Migration[6.0]
  def change
    create_table :carousels do |t|
      t.string :photo

      t.timestamps
    end
  end
end

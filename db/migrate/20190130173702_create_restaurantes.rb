class CreateRestaurantes < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurantes do |t|
    	t.string :nome, limit: 50
    	t.string :endereco
      t.timestamps
    end
  end
end

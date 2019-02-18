class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.text :conteudo
      t.string :author

      t.timestamps
    end
  end
end

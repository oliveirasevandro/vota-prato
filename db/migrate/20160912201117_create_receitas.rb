class CreateReceitas < ActiveRecord::Migration[5.0]
  def change
    create_table :receitas do |t|
      t.text :conteudo
      t.timestamps
    end
  end
end

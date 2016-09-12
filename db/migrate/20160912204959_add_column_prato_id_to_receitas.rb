class AddColumnPratoIdToReceitas < ActiveRecord::Migration[5.0]
  def change
    add_column :receitas, :prato_id, :integer
  end
end

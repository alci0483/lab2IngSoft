class AddPrivacidadCuentaYFechaDeCumpleanosToMonsters < ActiveRecord::Migration[7.0]
  def change
    add_column :monsters, :privacidad, :boolean, deault: false 
    add_column :monsters, :cumpleaños, :date
  end
end

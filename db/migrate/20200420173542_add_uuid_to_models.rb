class AddUuidToModels < ActiveRecord::Migration[6.0]
  def change
    enable_extension 'uuid-ossp'
    add_column :accounts, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    add_column :properties, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    add_column :posts, :uuid, :uuid, default: "uuid_generate_v4()", null: false
  end
end

class CreateSubscribes < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribes do |t|
      t.string :chat_name
      t.timestamps
    end
  end
end

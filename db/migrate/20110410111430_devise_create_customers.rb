class DeviseCreateCustomers < ActiveRecord::Migration
  def self.up
    change_table(:customers) do |t|
      t.database_authenticatable :null => false
      t.recoverable
      t.rememberable
      t.trackable

      # t.encryptable
      # t.confirmable
      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
      # t.token_authenticatable
    end

    add_index :customers, :email,                :unique => true
    add_index :customers, :reset_password_token, :unique => true
    # add_index :customers, :confirmation_token,   :unique => true
    # add_index :customers, :unlock_token,         :unique => true
    # add_index :customers, :authentication_token, :unique => true
  end

  def self.down
    change_table :customers do |t|
      t.remove :email, :encrypted_password, :reset_password_token, :remember_created_at
      t.remove :sign_in_count, :current_sign_in_at, :last_sign_in_at, :current_sign_in_ip
      t.remove :last_sign_in_ip
    end
  end
end

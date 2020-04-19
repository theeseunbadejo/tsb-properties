class TwoFactorAuthenticationAddToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :second_factor_attempts_count, :integer, default: 0
    add_column :accounts, :encrypted_otp_secret_key, :string
    add_column :accounts, :encrypted_otp_secret_key_iv, :string
    add_column :accounts, :encrypted_otp_secret_key_salt, :string
    add_column :accounts, :direct_otp, :string
    add_column :accounts, :direct_otp_sent_at, :datetime
    add_column :accounts, :totp_timestamp, :timestamp

    add_index :accounts, :encrypted_otp_secret_key, unique: true
  end
end

class AddPasswordChangeAtToAccounts < ActiveRecord::Migration[6.0]
  def change
    add_column :accounts, :password_changed_at, :datetime
    add_column :accounts, :unique_session_id, :string
    add_column :accounts, :last_activity_at, :datetime
    add_column :accounts, :expired_at, :datetime
    add_column :accounts, :security_question_id, :integer
    add_column :accounts, :security_question_answer, :string
  end
end

class InstallFeedbackable < ActiveRecord::Migration
  def self.up
    create_table :feedbacks do |t|
      t.string :subject, :limit => 20 
      t.text :feed_text
      t.references :feedbackable, :polymorphic => true
      t.string :contact_email
      t.timestamps
    end

    add_index :feedbacks, :feedbackable_type
    add_index :feedbacks, :feedbackable_id
  end

  def self.down
    drop_table :feedbacks
  end
end

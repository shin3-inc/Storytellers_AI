# frozen_string_literal: true

class DeviseCreateTourProviders < ActiveRecord::Migration[5.2]
  def change
    create_table :tour_providers do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      # t.integer  :sign_in_count, default: 0, null: false
      # t.datetime :current_sign_in_at
      # t.datetime :last_sign_in_at
      # t.string   :current_sign_in_ip
      # t.string   :last_sign_in_ip

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.string :last_name
      t.string :first_name
      t.string :last_name_kana
      t.string :first_name_kana
      t.string :postal_code
      t.string :address
      t.string :phone_number
      t.string :profile_image_id
      t.integer :tour_prefecture_id
      t.string :tour_city
      t.text :profile_information
      t.text :twitter_url
      t.text :facebook_url
      t.text :instagram_url
      t.text :blog_url


      t.timestamps null: false
    end

    add_index :tour_providers, :email,                unique: true
    add_index :tour_providers, :reset_password_token, unique: true
    # add_index :tour_providers, :confirmation_token,   unique: true
    # add_index :tour_providers, :unlock_token,         unique: true
  end
end

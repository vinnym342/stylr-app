# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170509041213) do

  create_table "comments", force: :cascade do |t|
    t.integer  "photo_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_comments_on_photo_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer  "stylist_id"
    t.integer  "asker_id"
    t.boolean  "resolved"
    t.string   "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asker_id"], name: "index_conversations_on_asker_id"
    t.index ["stylist_id"], name: "index_conversations_on_stylist_id"
  end

  create_table "followers", force: :cascade do |t|
    t.integer  "follower_id"
    t.integer  "followee_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["followee_id"], name: "index_followers_on_followee_id"
    t.index ["follower_id"], name: "index_followers_on_follower_id"
  end

  create_table "messages", force: :cascade do |t|
    t.integer  "conversation_id"
    t.integer  "sender_id"
    t.string   "message"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["sender_id"], name: "index_messages_on_sender_id"
  end

  create_table "photo_likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "photo_id"
    t.boolean  "liked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_photo_likes_on_photo_id"
    t.index ["user_id"], name: "index_photo_likes_on_user_id"
  end

  create_table "photos", force: :cascade do |t|
    t.string   "photo"
    t.integer  "styleboard_id"
    t.text     "caption"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "location"
    t.integer  "user_id"
    t.index ["styleboard_id"], name: "index_photos_on_styleboard_id"
    t.index ["user_id"], name: "index_photos_on_user_id"
  end

  create_table "professional_profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "message_price"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_professional_profiles_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "profile_pic"
    t.string   "username"
    t.text     "bio"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
    t.index ["username"], name: "index_profiles_on_username", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "conversation_id"
    t.integer  "usefulness"
    t.integer  "friendliness"
    t.text     "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["conversation_id"], name: "index_reviews_on_conversation_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "styleboard_likes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "styleboard_id"
    t.boolean  "liked"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["styleboard_id"], name: "index_styleboard_likes_on_styleboard_id"
    t.index ["user_id"], name: "index_styleboard_likes_on_user_id"
  end

  create_table "styleboards", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.text     "description"
    t.boolean  "public"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
    t.index ["user_id"], name: "index_styleboards_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

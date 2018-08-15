# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_110_420_222_224) do
  create_table 'comments', force: :cascade do |t|
    t.text 'body'
    t.string 'author'
    t.integer 'post_id', null: false
    t.integer 'person_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['person_id'], name: 'index_comments_on_person_id'
    t.index ['post_id'], name: 'index_comments_on_post_id'
  end

  create_table 'people', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'people_people', force: :cascade do |t|
    t.integer 'child_id', null: false
    t.integer 'person_id', null: false
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'posts', force: :cascade do |t|
    t.string 'title'
    t.text 'body'
    t.integer 'author_id', null: false
    t.integer 'person_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['author_id'], name: 'index_posts_on_author_id'
    t.index ['person_id'], name: 'index_posts_on_person_id'
  end
end

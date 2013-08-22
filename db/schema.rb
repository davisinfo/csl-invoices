# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130822164353) do

  create_table "achievement_unit_endorsements", :force => true do |t|
    t.integer  "achievement_unit_id"
    t.string   "name"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "achievement_unit_endorsements", ["achievement_unit_id"], :name => "index_achievement_unit_endorsements_on_achievement_unit_id"

  create_table "achievement_units", :force => true do |t|
    t.integer  "achievement_id"
    t.string   "unit"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "achievement_units", ["achievement_id"], :name => "index_achievement_units_on_achievement_id"

  create_table "achievements", :force => true do |t|
    t.integer  "achievement_person_id"
    t.string   "achievement_person_type"
    t.string   "qualification"
    t.string   "delivery_method"
    t.date     "registration_date"
    t.date     "achievement_date"
    t.date     "issued_date"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "achievements", ["achievement_person_id"], :name => "index_achievements_on_achievement_person_id"

  create_table "active_admin_comments", :force => true do |t|
    t.string   "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["created_at"], :name => "created_at"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "addresses", :force => true do |t|
    t.string   "name"
    t.string   "postcode"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "county"
    t.string   "country"
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "addresses", ["resource_id", "resource_type"], :name => "index_addresses_on_resource_id_and_resource_type"

  create_table "admin_notes", :force => true do |t|
    t.string   "resource_id",     :null => false
    t.string   "resource_type",   :null => false
    t.integer  "admin_user_id"
    t.string   "admin_user_type"
    t.text     "body"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "admin_notes", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                    :null => false
    t.string   "encrypted_password",                       :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.string   "name"
    t.integer  "role_id"
    t.string   "username",                                 :null => false
    t.boolean  "active",                 :default => true, :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "application_forms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at",                                     :null => false
    t.datetime "updated_at",                                     :null => false
    t.string   "declaration_card_name", :default => "CSCS Card"
    t.string   "provider",                                       :null => false
  end

  create_table "attachment_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "target"
  end

  create_table "attachments", :force => true do |t|
    t.string   "description"
    t.string   "file"
    t.integer  "attachable_id"
    t.string   "attachable_type"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "category_id"
  end

  add_index "attachments", ["attachable_id"], :name => "index_attachments_on_attachable_id"

  create_table "batches", :force => true do |t|
    t.string   "name"
    t.string   "batch_type"
    t.string   "status"
    t.integer  "admin_user_id"
    t.datetime "sent_date"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
    t.string   "payment_code"
    t.string   "destination"
    t.decimal  "payment_amount", :precision => 7, :scale => 2
    t.datetime "payment_date"
    t.string   "tracking_code"
    t.datetime "packaging_date"
    t.integer  "shipping_date"
  end

  add_index "batches", ["admin_user_id"], :name => "index_batches_on_admin_user_id"

  create_table "booking_vouchers", :force => true do |t|
    t.string   "voucher_code"
    t.integer  "status"
    t.integer  "processing_order_id"
    t.integer  "admin_user_id"
    t.integer  "priority"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "call_assessment_products", :force => true do |t|
    t.integer  "call_assessment_id"
    t.integer  "product_id"
    t.integer  "action"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  add_index "call_assessment_products", ["call_assessment_id"], :name => "index_call_assessment_products_on_call_assessment_id"
  add_index "call_assessment_products", ["product_id"], :name => "index_call_assessment_products_on_product_id"

  create_table "call_assessments", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "event_id"
    t.string   "call_reason_1"
    t.string   "other"
    t.date     "call_back_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "call_reason_2"
    t.string   "call_reason_3"
    t.string   "call_reason_4"
  end

  add_index "call_assessments", ["admin_user_id"], :name => "index_call_assessments_on_admin_user_id"
  add_index "call_assessments", ["event_id"], :name => "index_call_assessments_on_event_id"

  create_table "card_types", :force => true do |t|
    t.string   "card_type"
    t.string   "provider"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "new_application_form_id"
    t.string   "occupations"
    t.string   "occupation_codes"
    t.integer  "renewal_application_form_id"
    t.integer  "duplicate_application_form_id"
  end

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "complaint_closing_reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "complaint_products", :force => true do |t|
    t.integer  "complaint_id"
    t.integer  "processing_order_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.boolean  "included"
  end

  add_index "complaint_products", ["complaint_id"], :name => "index_complaint_products_on_complaint_id"
  add_index "complaint_products", ["processing_order_id"], :name => "index_complaint_products_on_processing_order_id"

  create_table "complaint_reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "complaint_rejection_reasons", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "complaints", :force => true do |t|
    t.integer  "complaint_reason_id"
    t.text     "notes"
    t.integer  "sales_order_id"
    t.string   "status"
    t.boolean  "approved"
    t.date     "letter_sent_date"
    t.decimal  "expense_amount",                  :precision => 10, :scale => 0
    t.datetime "refund_issue_date"
    t.string   "refund_reference_number"
    t.datetime "created_at",                                                     :null => false
    t.datetime "updated_at",                                                     :null => false
    t.string   "custom_reason"
    t.boolean  "letter_received"
    t.integer  "complaint_rejection_reason_id"
    t.string   "custom_rejection_reason"
    t.integer  "complaint_closing_reason_id"
    t.string   "complaint_custom_closing_reason"
    t.text     "approval_recommendations"
    t.string   "refund_method"
    t.decimal  "refund_amount",                   :precision => 10, :scale => 0
    t.string   "approval_reason"
    t.integer  "processing_order_id"
  end

  add_index "complaints", ["sales_order_id"], :name => "index_complaints_on_sales_order_id"

  create_table "contacts", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "organization_id"
    t.string   "email"
    t.string   "national_insurance_number"
    t.string   "primary_phone"
    t.string   "secondary_phone"
    t.date     "date_of_birth"
    t.string   "preferred_contact_date"
    t.string   "preferred_contact_time_start"
    t.string   "source"
    t.string   "phoenix_id"
    t.string   "pearson_username"
    t.string   "pearson_password"
    t.string   "pearson_email"
    t.datetime "created_at",                                          :null => false
    t.datetime "updated_at",                                          :null => false
    t.string   "secondary_email"
    t.string   "tertiary_phone"
    t.string   "preferred_contact_time_end"
    t.integer  "organization_role_id"
    t.datetime "cskills_updated_on"
    t.integer  "whmcs_id"
    t.datetime "phoenix_updated_on"
    t.string   "encrypted_password",                  :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "temporary_national_insurance_number"
  end

  add_index "contacts", ["email"], :name => "index_contacts_on_primary_email", :unique => true
  add_index "contacts", ["email"], :name => "primary_email"
  add_index "contacts", ["national_insurance_number"], :name => "index_contacts_on_national_insurance_number"
  add_index "contacts", ["organization_id"], :name => "organization_id"
  add_index "contacts", ["reset_password_token"], :name => "index_contacts_on_reset_password_token", :unique => true
  add_index "contacts", ["whmcs_id"], :name => "whmcs_id", :unique => true

  create_table "credit_notes", :force => true do |t|
    t.integer  "contact_id"
    t.integer  "sales_order_id"
    t.decimal  "initial_amount", :precision => 10, :scale => 0
    t.decimal  "current_amount", :precision => 10, :scale => 0
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "credit_notes", ["contact_id"], :name => "index_credit_notes_on_contact_id"
  add_index "credit_notes", ["sales_order_id"], :name => "index_credit_notes_on_sales_orders_id"

  create_table "credit_notes_payment_transactions", :id => false, :force => true do |t|
    t.integer "credit_note_id"
    t.integer "payment_transaction_id"
  end

  add_index "credit_notes_payment_transactions", ["credit_note_id", "payment_transaction_id"], :name => "credit_notes_payment_transactions", :unique => true

  create_table "customers", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "postcode"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "contact_number"
    t.string   "email"
    t.integer  "contact_id"
  end

  create_table "email_templates", :force => true do |t|
    t.string   "name"
    t.string   "subject"
    t.text     "message"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "display_for_contact", :default => false, :null => false
    t.boolean  "display_for_lead",    :default => false, :null => false
    t.boolean  "is_a_support_ticket", :default => true
  end

  create_table "emails", :force => true do |t|
    t.string   "subject"
    t.integer  "recipient_id"
    t.string   "recipient_type",                     :null => false
    t.datetime "date"
    t.integer  "related_to_id"
    t.string   "related_to_type"
    t.boolean  "is_sms",          :default => false, :null => false
  end

  add_index "emails", ["date"], :name => "date"
  add_index "emails", ["recipient_id"], :name => "index_emails_on_contact_id"

  create_table "event_chasing_cycles", :force => true do |t|
    t.string   "name"
    t.integer  "day_1_type_id"
    t.integer  "day_1_template_id"
    t.integer  "day_2_type_id"
    t.integer  "day_2_template_id"
    t.integer  "day_3_type_id"
    t.integer  "day_3_template_id"
    t.integer  "day_4_type_id"
    t.integer  "day_4_template_id"
    t.integer  "day_5_type_id"
    t.integer  "day_5_template_id"
    t.integer  "day_6_type_id"
    t.integer  "day_6_template_id"
    t.integer  "week_1_type_id"
    t.integer  "week_1_template_id"
    t.integer  "week_2_type_id"
    t.integer  "week_2_template_id"
    t.integer  "week_3_type_id"
    t.integer  "week_3_template_id"
    t.integer  "week_4_type_id"
    t.integer  "week_4_template_id"
    t.integer  "month_1_type_id"
    t.integer  "month_1_template_id"
    t.integer  "month_2_type_id"
    t.integer  "month_2_template_id"
    t.integer  "month_3_type_id"
    t.integer  "month_3_template_id"
    t.integer  "month_4_type_id"
    t.integer  "month_4_template_id"
    t.integer  "month_5_type_id"
    t.integer  "month_5_template_id"
    t.integer  "month_6_type_id"
    t.integer  "month_6_template_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "event_target_type_id"
  end

  add_index "event_chasing_cycles", ["day_1_template_id"], :name => "index_event_chasing_cycles_on_day_1_template_id"
  add_index "event_chasing_cycles", ["day_1_type_id"], :name => "index_event_chasing_cycles_on_day_1_type_id"
  add_index "event_chasing_cycles", ["day_2_template_id"], :name => "index_event_chasing_cycles_on_day_2_template_id"
  add_index "event_chasing_cycles", ["day_2_type_id"], :name => "index_event_chasing_cycles_on_day_2_type_id"
  add_index "event_chasing_cycles", ["day_3_template_id"], :name => "index_event_chasing_cycles_on_day_3_template_id"
  add_index "event_chasing_cycles", ["day_3_type_id"], :name => "index_event_chasing_cycles_on_day_3_type_id"
  add_index "event_chasing_cycles", ["day_4_template_id"], :name => "index_event_chasing_cycles_on_day_4_template_id"
  add_index "event_chasing_cycles", ["day_4_type_id"], :name => "index_event_chasing_cycles_on_day_4_type_id"
  add_index "event_chasing_cycles", ["day_5_template_id"], :name => "index_event_chasing_cycles_on_day_5_template_id"
  add_index "event_chasing_cycles", ["day_5_type_id"], :name => "index_event_chasing_cycles_on_day_5_type_id"
  add_index "event_chasing_cycles", ["day_6_template_id"], :name => "index_event_chasing_cycles_on_day_6_template_id"
  add_index "event_chasing_cycles", ["day_6_type_id"], :name => "index_event_chasing_cycles_on_day_6_type_id"
  add_index "event_chasing_cycles", ["month_1_template_id"], :name => "index_event_chasing_cycles_on_month_1_template_id"
  add_index "event_chasing_cycles", ["month_1_type_id"], :name => "index_event_chasing_cycles_on_month_1_type_id"
  add_index "event_chasing_cycles", ["month_2_template_id"], :name => "index_event_chasing_cycles_on_month_2_template_id"
  add_index "event_chasing_cycles", ["month_2_type_id"], :name => "index_event_chasing_cycles_on_month_2_type_id"
  add_index "event_chasing_cycles", ["month_3_template_id"], :name => "index_event_chasing_cycles_on_month_3_template_id"
  add_index "event_chasing_cycles", ["month_3_type_id"], :name => "index_event_chasing_cycles_on_month_3_type_id"
  add_index "event_chasing_cycles", ["month_4_template_id"], :name => "index_event_chasing_cycles_on_month_4_template_id"
  add_index "event_chasing_cycles", ["month_4_type_id"], :name => "index_event_chasing_cycles_on_month_4_type_id"
  add_index "event_chasing_cycles", ["month_5_template_id"], :name => "index_event_chasing_cycles_on_month_5_template_id"
  add_index "event_chasing_cycles", ["month_5_type_id"], :name => "index_event_chasing_cycles_on_month_5_type_id"
  add_index "event_chasing_cycles", ["month_6_template_id"], :name => "index_event_chasing_cycles_on_month_6_template_id"
  add_index "event_chasing_cycles", ["month_6_type_id"], :name => "index_event_chasing_cycles_on_month_6_type_id"
  add_index "event_chasing_cycles", ["week_1_template_id"], :name => "index_event_chasing_cycles_on_week_1_template_id"
  add_index "event_chasing_cycles", ["week_1_type_id"], :name => "index_event_chasing_cycles_on_week_1_type_id"
  add_index "event_chasing_cycles", ["week_2_template_id"], :name => "index_event_chasing_cycles_on_week_2_template_id"
  add_index "event_chasing_cycles", ["week_2_type_id"], :name => "index_event_chasing_cycles_on_week_2_type_id"
  add_index "event_chasing_cycles", ["week_3_template_id"], :name => "index_event_chasing_cycles_on_week_3_template_id"
  add_index "event_chasing_cycles", ["week_3_type_id"], :name => "index_event_chasing_cycles_on_week_3_type_id"
  add_index "event_chasing_cycles", ["week_4_template_id"], :name => "index_event_chasing_cycles_on_week_4_template_id"
  add_index "event_chasing_cycles", ["week_4_type_id"], :name => "index_event_chasing_cycles_on_week_4_type_id"

  create_table "event_outcomes", :force => true do |t|
    t.string   "name"
    t.integer  "event_target_type_id"
    t.string   "target_new_status"
    t.boolean  "continue_chasing"
    t.text     "description"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.boolean  "choose_next_date"
  end

  add_index "event_outcomes", ["event_target_type_id"], :name => "index_event_outcomes_on_event_target_type_id"

  create_table "event_reasons", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "event_target_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "event_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "events", :force => true do |t|
    t.integer  "event_reason_id"
    t.integer  "event_type_id"
    t.string   "status"
    t.integer  "event_outcome_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "target_id"
    t.integer  "event_target_type_id"
    t.integer  "admin_user_id"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.text     "description"
    t.string   "current_chasing_stage", :default => "day_1"
    t.text     "history"
    t.string   "target_type"
  end

  add_index "events", ["admin_user_id"], :name => "index_events_on_admin_user_id"
  add_index "events", ["target_id"], :name => "index_events_on_target_id"

  create_table "gateway_logs", :force => true do |t|
    t.string   "gateway"
    t.string   "message"
    t.text     "transaction_data"
    t.boolean  "successful"
    t.datetime "date"
  end

  create_table "hs_test_results", :force => true do |t|
    t.integer  "test_taker_id"
    t.string   "test_taker_type"
    t.string   "test_type"
    t.date     "date_passed"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "hs_test_results", ["test_taker_id"], :name => "index_hs_test_results_on_test_taker_id"

  create_table "invoice_items", :force => true do |t|
    t.integer  "invoice_id"
    t.decimal  "value",        :precision => 8, :scale => 2
    t.string   "product_name"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "quantity"
    t.boolean  "cis"
    t.boolean  "vat"
    t.decimal  "discount",     :precision => 8, :scale => 2
  end

  add_index "invoice_items", ["invoice_id"], :name => "index_invoice_items_on_invoice_id"

  create_table "invoices", :force => true do |t|
    t.integer  "customer_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "invoice_number"
    t.integer  "due_date"
    t.integer  "address_id"
    t.integer  "ship_to_address"
  end

  add_index "invoices", ["customer_id"], :name => "index_invoices_on_customer_id"

  create_table "issued_cards", :force => true do |t|
    t.integer  "card_holder_id"
    t.string   "card_holder_type"
    t.string   "card_type"
    t.date     "start_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.date     "expiry_date"
  end

  add_index "issued_cards", ["card_holder_id"], :name => "index_issued_cards_on_card_holder_id"

  create_table "leads", :force => true do |t|
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "company"
    t.string   "email"
    t.string   "national_insurance_number"
    t.string   "primary_phone"
    t.string   "secondary_phone"
    t.date     "date_of_birth"
    t.string   "preferred_contact_date"
    t.string   "preferred_contact_time_start"
    t.string   "source"
    t.boolean  "is_converted"
    t.integer  "contact_id"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.string   "status",                              :null => false
    t.string   "secondary_email"
    t.string   "tertiary_phone"
    t.string   "preferred_contact_time_end"
    t.boolean  "is_company"
    t.datetime "phoenix_updated_on"
    t.string   "temporary_national_insurance_number"
  end

  create_table "memberships", :force => true do |t|
    t.integer  "membershipable_id"
    t.string   "membershipable_type"
    t.integer  "professional_body_id"
    t.integer  "professional_body_class_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "admin_user_id"
  end

  add_index "memberships", ["membershipable_id", "membershipable_type"], :name => "index_memberships_on_membershipable_id_and_membershipable_type"

  create_table "nvq_workflow_project_issues", :force => true do |t|
    t.string   "name"
    t.integer  "issue_id"
    t.integer  "nvq_workflow_project_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  add_index "nvq_workflow_project_issues", ["nvq_workflow_project_id"], :name => "index_nvq_workflow_project_issues_on_nvq_workflow_project_id"

  create_table "nvq_workflow_project_trades", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "nvq_workflow_projects", :force => true do |t|
    t.string   "candidate_name"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "project_identifier"
    t.integer  "project_id"
    t.string   "qualification_code"
    t.integer  "nvq_level"
    t.integer  "billing_system_client_id"
    t.integer  "trade_id"
  end

  create_table "occupation_names", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "occupations", :force => true do |t|
    t.integer  "occupation_person_id"
    t.string   "occupation_person_type"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "occupation_name_id"
    t.integer  "admin_user_id"
  end

  add_index "occupations", ["occupation_person_id", "occupation_person_type"], :name => "index_occupations_on_occupation_person_id_and_type"

  create_table "opportunities", :force => true do |t|
    t.integer  "target_id"
    t.decimal  "amount",         :precision => 8, :scale => 2
    t.decimal  "discount",       :precision => 8, :scale => 2, :default => 0.0, :null => false
    t.string   "sales_stage"
    t.datetime "created_at",                                                    :null => false
    t.datetime "updated_at",                                                    :null => false
    t.text     "description"
    t.string   "target_type"
    t.integer  "sales_order_id"
  end

  add_index "opportunities", ["sales_order_id"], :name => "index_opportunities_on_sales_order_id"
  add_index "opportunities", ["target_id"], :name => "index_opportunities_on_contact_id"

  create_table "opportunity_products", :force => true do |t|
    t.integer  "opportunity_id",        :null => false
    t.integer  "product_id",            :null => false
    t.integer  "quantity",              :null => false
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.string   "cscs_test_type"
    t.date     "cscs_test_date"
    t.string   "cscs_test_city"
    t.string   "cscs_test_language"
    t.string   "card_application_type"
    t.integer  "card_type_id"
  end

  add_index "opportunity_products", ["card_type_id"], :name => "index_opportunity_products_on_card_type_id"
  add_index "opportunity_products", ["opportunity_id"], :name => "index_opportunity_products_on_opportunity_id"

  create_table "organizations", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "primary_phone"
    t.string   "secondary_phone"
    t.string   "fax"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
    t.string   "secondary_email"
    t.string   "tertiary_phone"
    t.integer  "main_contact_id"
    t.integer  "whmcs_id"
    t.integer  "contacts_count",  :default => 0
  end

  add_index "organizations", ["name"], :name => "primary_email"
  add_index "organizations", ["whmcs_id"], :name => "whmcs_id", :unique => true

  create_table "package_products", :force => true do |t|
    t.integer  "package_id"
    t.integer  "product_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "package_products", ["package_id"], :name => "index_package_products_on_package_id"
  add_index "package_products", ["product_id"], :name => "index_package_products_on_product_id"

  create_table "payment_transactions", :force => true do |t|
    t.integer  "sales_order_id"
    t.integer  "admin_user_id"
    t.string   "currency"
    t.decimal  "amount",         :precision => 8, :scale => 2
    t.string   "gateway"
    t.string   "authorization"
    t.datetime "date"
  end

  add_index "payment_transactions", ["admin_user_id"], :name => "index_payment_transactions_on_admin_user_id"
  add_index "payment_transactions", ["sales_order_id"], :name => "index_payment_transactions_on_sales_order_id"

  create_table "permissions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "action"
    t.string   "subject_class"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.text     "custom_code",   :null => false
  end

  create_table "permissions_roles", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "permission_id"
  end

  add_index "permissions_roles", ["role_id", "permission_id"], :name => "index_permissions_roles_on_role_id_and_permission_id"

  create_table "phoenix_card_categories", :force => true do |t|
    t.integer  "phoenix_card_id"
    t.string   "main_category"
    t.string   "name"
    t.date     "start_date"
    t.date     "expiry_date"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "phoenix_card_categories", ["phoenix_card_id"], :name => "index_phoenix_card_categories_on_phoenix_card_id"

  create_table "phoenix_cards", :force => true do |t|
    t.integer  "card_holder_id"
    t.string   "card_holder_type"
    t.string   "card_type"
    t.date     "date_issued"
    t.date     "expiry_date"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  add_index "phoenix_cards", ["card_holder_id"], :name => "index_phoenix_cards_on_card_holder_id"

  create_table "phoenix_hs_test_results", :force => true do |t|
    t.integer  "test_taker_id"
    t.string   "test_taker_type"
    t.string   "test_type"
    t.date     "date"
    t.string   "result"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "phoenix_hs_test_results", ["test_taker_id"], :name => "index_phoenix_hs_test_results_on_test_taker_id"

  create_table "processing_orders", :force => true do |t|
    t.integer  "sales_order_id"
    t.integer  "product_id"
    t.string   "status"
    t.integer  "contact_id"
    t.datetime "created_at",                                            :null => false
    t.datetime "updated_at",                                            :null => false
    t.integer  "sales_order_product_id"
    t.date     "packaging_date"
    t.date     "shipping_date"
    t.integer  "quantity",                               :default => 1
    t.text     "booking_confirmation_data"
    t.text     "booking_driving_data"
    t.string   "booking_exam"
    t.string   "booking_confirmation_number"
    t.date     "booking_test_date"
    t.string   "tracking_code"
    t.integer  "shipping_batch_id"
    t.datetime "received_date"
    t.date     "waiting_for_documents"
    t.integer  "payment_batch_id"
    t.string   "payment_code"
    t.datetime "vetted_date"
    t.boolean  "card_missing_photo"
    t.boolean  "card_missing_hse_passed"
    t.boolean  "card_missing_personal_details"
    t.boolean  "card_missing_signatures"
    t.boolean  "card_missing_employer_signature"
    t.boolean  "card_missing_nvq"
    t.boolean  "card_missing_other_qualification"
    t.boolean  "card_missing_declaration_signed"
    t.boolean  "card_missing_cv"
    t.boolean  "card_missing_appeal_letter"
    t.boolean  "card_cscs_reject_has_card"
    t.boolean  "card_cscs_reject_proof_of_name"
    t.boolean  "card_cscs_reject_proof_of_nino"
    t.boolean  "card_cscs_reject_copy_qualification"
    t.boolean  "card_cscs_reject_copy_hse_cert"
    t.boolean  "card_cscs_reject_other"
    t.boolean  "card_missing_app_form"
    t.boolean  "card_missing_hse"
    t.boolean  "card_missing_previous_card_details"
    t.boolean  "card_missing_qualifications"
    t.boolean  "card_missing_appeal_docs"
    t.boolean  "card_hse_in_future"
    t.boolean  "card_has_valid_card"
    t.boolean  "card_incorrect_address"
    t.boolean  "card_incorrect_personal_details"
    t.boolean  "card_missing_proof_of_personal_details"
    t.boolean  "card_unclear_card_type"
    t.boolean  "card_requested_refund"
    t.date     "card_expire_date"
    t.integer  "card_type_id"
    t.string   "card_application_type"
  end

  add_index "processing_orders", ["product_id"], :name => "index_processing_orders_on_product_id"
  add_index "processing_orders", ["sales_order_id"], :name => "index_processing_orders_on_sales_order_id"

  create_table "product_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "product_categories", ["name"], :name => "index_product_categories_on_name"

  create_table "product_sales_orders", :force => true do |t|
    t.integer  "product_id"
    t.integer  "sales_order_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "product_sales_orders", ["product_id"], :name => "index_product_sales_orders_on_product_id"
  add_index "product_sales_orders", ["sales_order_id"], :name => "index_product_sales_orders_on_sales_order_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.decimal  "net_price",           :precision => 8, :scale => 2,                    :null => false
    t.integer  "vat",                                               :default => 0,     :null => false
    t.string   "type",                                              :default => "0",   :null => false
    t.integer  "stock_available",                                   :default => 1,     :null => false
    t.datetime "created_at",                                                           :null => false
    t.datetime "updated_at",                                                           :null => false
    t.boolean  "is_discountable"
    t.boolean  "for_sale",                                          :default => false, :null => false
    t.integer  "weight_in_grams"
    t.integer  "product_category_id"
    t.boolean  "track_stock",                                       :default => false, :null => false
    t.string   "short_name"
  end

  create_table "professional_bodies", :force => true do |t|
    t.string   "name"
    t.string   "acronym"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "professional_bodies", ["acronym"], :name => "acronym"

  create_table "professional_body_classes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "professional_body_classes", ["name"], :name => "name"

  create_table "qualification_subjects", :force => true do |t|
    t.string "subject"
  end

  create_table "qualifications", :force => true do |t|
    t.integer  "qualifiable_id"
    t.string   "qualifiable_type"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.string   "awarder"
    t.integer  "level"
    t.integer  "qualification_subject_id"
    t.integer  "admin_user_id"
  end

  add_index "qualifications", ["qualifiable_id", "qualifiable_type"], :name => "index_qualifications_on_qualifiable_id_and_qualifiable_type"

  create_table "quote_products", :force => true do |t|
    t.integer "quote_id"
    t.string  "name"
    t.decimal "net_price", :precision => 8, :scale => 2
    t.integer "vat"
    t.integer "quantity"
  end

  add_index "quote_products", ["quote_id"], :name => "index_quote_products_on_quote_id"

  create_table "quotes", :force => true do |t|
    t.integer  "opportunity_id"
    t.integer  "admin_user_id"
    t.decimal  "discount",        :precision => 8, :scale => 2
    t.date     "expiration_date"
    t.string   "status"
    t.datetime "created_at",                                    :null => false
    t.datetime "updated_at",                                    :null => false
  end

  add_index "quotes", ["admin_user_id"], :name => "index_quotes_on_admin_user_id"
  add_index "quotes", ["opportunity_id"], :name => "index_quotes_on_opportunity_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "sales_order_products", :force => true do |t|
    t.integer  "sales_order_id"
    t.integer  "product_id"
    t.integer  "contact_id"
    t.string   "cscs_test_type"
    t.date     "cscs_test_date"
    t.string   "cscs_test_city"
    t.string   "cscs_test_language"
    t.datetime "created_at",                                         :null => false
    t.datetime "updated_at",                                         :null => false
    t.string   "status",                :default => "Unprocessable"
    t.integer  "quantity",              :default => 1
    t.integer  "whmcs_id"
    t.string   "card_application_type"
    t.string   "card_type"
    t.integer  "card_type_id"
    t.integer  "address_id"
    t.string   "postcode"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "city"
    t.string   "county"
    t.string   "country"
  end

  add_index "sales_order_products", ["contact_id"], :name => "index_sales_order_products_on_contact_id"
  add_index "sales_order_products", ["product_id"], :name => "index_sales_order_products_on_product_id"
  add_index "sales_order_products", ["sales_order_id"], :name => "index_sales_order_products_on_sales_order_id"
  add_index "sales_order_products", ["whmcs_id"], :name => "whmcs_id"

  create_table "sales_orders", :force => true do |t|
    t.decimal  "total_amount",        :precision => 8, :scale => 2
    t.integer  "discount"
    t.integer  "main_contact_id"
    t.integer  "employees_no"
    t.datetime "created_at",                                        :null => false
    t.datetime "updated_at",                                        :null => false
    t.string   "status"
    t.string   "billing_address_1"
    t.string   "billing_address_2"
    t.string   "billing_city"
    t.string   "billing_county"
    t.string   "billing_postcode"
    t.string   "billing_country"
    t.string   "shipping_address_1"
    t.string   "shipping_address_2"
    t.string   "shipping_city"
    t.string   "shipping_county"
    t.string   "shipping_postcode"
    t.string   "shipping_country"
    t.decimal  "amount_paid",         :precision => 8, :scale => 2
    t.string   "billing_first_name"
    t.string   "billing_last_name"
    t.string   "shipping_first_name"
    t.string   "shipping_last_name"
    t.boolean  "next_day_delivery"
    t.integer  "whmcs_id"
    t.integer  "billing_address_id"
    t.integer  "shipping_address_id"
  end

  add_index "sales_orders", ["created_at"], :name => "created_at"
  add_index "sales_orders", ["main_contact_id"], :name => "index_sales_orders_on_main_contact_id"
  add_index "sales_orders", ["whmcs_id"], :name => "whmcs_id", :unique => true

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "sms_templates", :force => true do |t|
    t.string   "name"
    t.text     "message"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.boolean  "display_for_contact", :default => false, :null => false
    t.boolean  "display_for_lead",    :default => false, :null => false
  end

  create_table "stock_flows", :force => true do |t|
    t.integer  "product_id"
    t.integer  "processing_order_id"
    t.integer  "amount"
    t.string   "details"
    t.datetime "date"
  end

  add_index "stock_flows", ["product_id"], :name => "index_stock_flows_on_product_id"

  create_table "team_memberships", :force => true do |t|
    t.integer  "admin_user_id"
    t.integer  "team_id"
    t.string   "team_role"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "team_memberships", ["admin_user_id"], :name => "index_team_memberships_on_admin_user_id"
  add_index "team_memberships", ["team_id"], :name => "index_team_memberships_on_team_id"

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "versions", :force => true do |t|
    t.string   "item_type",  :null => false
    t.integer  "item_id",    :null => false
    t.string   "event",      :null => false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
  end

  add_index "versions", ["item_type", "item_id"], :name => "index_versions_on_item_type_and_item_id"

end

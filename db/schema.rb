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

ActiveRecord::Schema.define(:version => 20130705124821) do

  create_table "addresses", :force => true do |t|
    t.string   "city"
    t.string   "street"
    t.string   "house"
    t.integer  "appartment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_cervix_sizes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_cervix_structure_changes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_cervix_visibilities", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrial_adumbrations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrial_boundaries", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrium_echostructure_change_types", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrium_echostructure_changes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrium_echostructure_hyperechoic_inclusion_localizations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_endometrium_echostructure_hyperechoic_inclusions", :force => true do |t|
    t.integer  "gynecologic_examination_id"
    t.float    "size"
    t.integer  "localization_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "gynecologic_examination_endometrium_phases", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_myometric_structure_changes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_myometric_structure_node_depth_localizations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_myometric_structure_node_localizations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_myometric_structure_nodes", :force => true do |t|
    t.float    "size"
    t.integer  "gynecologic_examination_id"
    t.integer  "localization_id"
    t.integer  "depth_localization_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "gynecologic_examination_ovaries", :force => true do |t|
    t.float    "length"
    t.float    "thickness"
    t.float    "width"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "visibility_id"
    t.integer  "size_id"
    t.integer  "structure_id"
  end

  create_table "gynecologic_examination_ovary_sizes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_ovary_structures", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_ovary_visibilities", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_adumbrations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_body_detection_positions", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_body_visibilities", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_boundaries", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_cavity_deformations", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_cavity_size_changes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_shapes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examination_uterine_sizes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "gynecologic_examinations", :force => true do |t|
    t.date     "menstruation_date"
    t.integer  "menstruation_day"
    t.float    "uterine_length"
    t.float    "uterine_anteroposterior"
    t.float    "uterine_width"
    t.float    "endometrial_thickness"
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
    t.integer  "uterine_boundary_id"
    t.integer  "uterine_adumbration_id"
    t.integer  "uterine_shape_id"
    t.integer  "uterine_size_id"
    t.integer  "endometrial_boundary_id"
    t.integer  "endometrial_adumbration_id"
    t.integer  "endometrium_phase_id"
    t.integer  "uterine_cavity_deformation_id"
    t.integer  "uterine_cavity_size_change_id"
    t.integer  "cervix_visibility_id"
    t.integer  "cervix_size_id"
    t.integer  "cervix_structure_change_id"
    t.integer  "left_ovary_id"
    t.integer  "right_ovary_id"
    t.integer  "uterine_body_visibility_id"
    t.integer  "uterine_body_detection_position_id"
    t.integer  "myometric_structure_change_id"
    t.integer  "endometrium_echostructure_change_id"
    t.integer  "endometrium_echostructure_change_type_id"
  end

  create_table "patient_examinations", :force => true do |t|
    t.integer  "patient_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.integer  "gynecologic_examination_id"
  end

  add_index "patient_examinations", ["patient_id", "gynecologic_examination_id"], :name => "index_on_patient_id_and_gynecologic_examination_id"

  create_table "patients", :force => true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "patronymic"
    t.date     "dob"
    t.integer  "sex_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "phone"
    t.integer  "address_id"
  end

  add_index "patients", ["address_id"], :name => "index_patients_on_address_id"
  add_index "patients", ["sex_id"], :name => "index_patients_on_sex_id"

  create_table "sexes", :force => true do |t|
    t.string   "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

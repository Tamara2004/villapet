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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151123113434) do

  create_table "cita", force: true do |t|
    t.string   "control"
    t.date     "fecha"
    t.string   "obsevacion"
    t.integer  "recepcion_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cita", ["recepcion_id"], name: "index_cita_on_recepcion_id"

  create_table "clientes", force: true do |t|
    t.string   "nombre"
    t.string   "direccion"
    t.string   "contacto"
    t.integer  "pet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "clientes", ["pet_id"], name: "index_clientes_on_pet_id"

  create_table "pets", force: true do |t|
    t.string   "nombre"
    t.string   "edad"
    t.string   "raza"
    t.string   "especie"
    t.integer  "servicio_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pets", ["servicio_id"], name: "index_pets_on_servicio_id"

  create_table "recepcions", force: true do |t|
    t.integer  "cliente_id"
    t.integer  "veterinario_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "recepcions", ["cliente_id"], name: "index_recepcions_on_cliente_id"
  add_index "recepcions", ["veterinario_id"], name: "index_recepcions_on_veterinario_id"

  create_table "servicios", force: true do |t|
    t.string   "nombre"
    t.string   "valor"
    t.string   "tratamiento"
    t.string   "insumo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "usuarios", force: true do |t|
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
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

  create_table "veterinarios", force: true do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.string   "asistencia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

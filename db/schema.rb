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

ActiveRecord::Schema.define(version: 2018_07_19_105208) do

  create_table "ano_letivo", primary_key: "ano_letivo_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "ano_letivo", null: false
  end

  create_table "area_cientifica", primary_key: "area_cientifica_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome_area", limit: 50
    t.string "regente", limit: 50
    t.integer "docentes_coordenador_id", null: false
    t.integer "dsd_dsd_id", null: false
  end

  create_table "contrato", primary_key: "contrato_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "grau_academico", limit: 50
    t.string "regime", limit: 20
    t.integer "etis", null: false
    t.date "data_inicio"
    t.date "data_fim"
    t.integer "docentes_docentes_id", null: false
  end

  create_table "curso", primary_key: "curso_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome_curso", limit: 50
    t.integer "area_cientifica_d", null: false
    t.integer "docentes_docentes_id", null: false
  end

  create_table "docentes", primary_key: "docentes_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome_docente", limit: 50
    t.integer "uc_id", null: false
  end

  create_table "dsd", primary_key: "dsd_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "nr_versao"
    t.string "estado", limit: 50
    t.integer "area_cientifica_id", null: false
    t.integer "ano_letivo_ano_letivo_id", null: false
    t.integer "ano_letivo_dsd_id", null: false
    t.integer "ano_letivo_ano_letivo", null: false
  end

  create_table "lista", primary_key: "contrato_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "comentario", limit: 200
    t.integer "docentes_docentes_id", null: false
  end

  create_table "tipologia", primary_key: "tipologia_id", id: :string, limit: 20, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "tipologia", limit: 50, null: false
    t.integer "turma", null: false
    t.string "docente", limit: 20, null: false
  end

  create_table "turma", primary_key: "turma_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "unidade_curricular", null: false
  end

  create_table "unidade_curricular", primary_key: "uc_id", id: :integer, default: nil, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nome_uc", limit: 50, null: false
    t.string "ano_curricular", limit: 50, null: false
    t.integer "semestre", null: false
    t.integer "curso", null: false
    t.string "regente", limit: 20, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "remember_digest"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

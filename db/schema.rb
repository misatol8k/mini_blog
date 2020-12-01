ActiveRecord::Schema.define(version: 2020_12_01_084519) do

  enable_extension "plpgsql"

  create_table "mini_blogs", force: :cascade do |t|
    t.text "content"
  end

end

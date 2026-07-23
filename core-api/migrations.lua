local schema = require("lapis.db.schema")
local create_table = schema.create_table
local create_index = schema.create_index
local types = schema.types

return {
  [1784705741] = function()
    create_table("users", {
      { "id",          types.id },
      { "email",       types.varchar },
      { "password",    types.varchar },
      { "created_at",  types.timestamp },
      { "modified_at", types.timestamp },
    })

    create_table("bookmarks", {
      { "id",          types.id },
      { "user_id",     types.integer },
      { "name",        types.varchar({ null = true }) },
      { "location",    types.varchar },
      { "created_at",  types.timestamp },
      { "modified_at", types.timestamp },
    })

    create_table("tags", {
      { "id",          types.id },
      { "user_id",     types.integer },
      { "value",       types.varchar },
      { "created_at",  types.timestamp },
      { "modified_at", types.timestamp },
    })

    create_table("bookmarks_tags", {
      { "bookmark_id", types.integer },
      { "tag_id",      types.integer },
    })

    create_index("users", "email", {
      unique = true,
    })

    create_index("bookmarks", "user_id")
  end
}

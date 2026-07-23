local config = require("lapis.config")
local dotenv = require("lua-dotenv")

if dotenv.load() then
  -- If .env file exists, configure development
  config("development", {
    server = "nginx",
    code_cache = "off",
    num_workers = "1",
    mysql = {
      host = assert(dotenv.get("DB_HOST"), "DB_HOST must be set"),
      user = assert(dotenv.get("DB_USER"), "DB_USER must be set"),
      password = assert(dotenv.get("DB_PASSWORD"), "DB_PASSWORD must be set"),
      database = assert(dotenv.get("DB_DATABASE"), "DB_DATABASE must be set"),
    }
  })
end

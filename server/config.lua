local config = require("lapis.config")

config("development", {
  server = "nginx",
  code_cache = "off",
  num_workers = "1",
  mysql = {
    host = assert(os.getenv("DB_HOST"), "DB_HOST must be set"),
    user = assert(os.getenv("DB_USER"), "DB_USER must be set"),
    password = assert(os.getenv("DB_PASSWORD"), "DB_PASSWORD must be set"),
    database = assert(os.getenv("DB_DATABASE"), "DB_DATABASE must be set"),
  }
})

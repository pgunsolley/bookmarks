package = "bookmarks"
version = "dev-1"

source = {
  url = "https://github.com/pgunsolley/bookmarks.git"
}

description = {
  summary = "A self-hostable url bookmark application",
  homepage = "",
  license = "BSD-3-Clause"
}

dependencies = {
  "lua ~> 5.1",
  "lapis == 1.18.0",
  "luasql-mysql",
  "lua-resty-jwt ~> 0.3.2"
}

build = {
  type = "none"
}

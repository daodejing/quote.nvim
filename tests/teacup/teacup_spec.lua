local plugin = require("teacup")

describe("setup", function()
  it("works with default", function()
    assert(plugin.hello() ==  "Hello World!", "my first function with param = Hello World!")
  end)

  it("works with custom var", function()
    plugin.setup({ msg = "Hey There!" })
    assert(plugin.hello() == "Hey There!", "my first function with param = Hey There!")
  end)
end)

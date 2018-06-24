import crappycli

let 💩 = newCrappyCli(
  params = @["-i", "", "throw", "", "my", "thing", "-down", " --flip", " it ", "and", "--reverse", "it"],
  flags = @["reverse", "work"],
)
doAssert 💩.has("i")
doAssert 💩.has("throw").not
doAssert 💩.has("my").not
doAssert 💩.has("thing").not
doAssert 💩.has("down")
doAssert 💩.has("flip")
doAssert 💩.has("it").not
doAssert 💩.has("and").not
doAssert 💩.has("reverse")
doAssert 💩.has("it").not
doAssert 💩["i"] == "throw"
doAssert 💩["my"] == ""
doAssert 💩["thing"] == ""
doAssert 💩["down"] == ""
doAssert 💩["flip"] == "it"
doAssert 💩["and"] == ""
doAssert 💩["reverse"] == ""
doAssert 💩["it"] == ""
doAssert 💩[""] == ""
doAssert 💩.nth(100) == ""
doAssert 💩.nth(0) == ""
doAssert 💩.nth(-1) == ""
doAssert 💩.first == "my"
doAssert 💩.second == "thing"
doAssert 💩.third == "and"
doAssert 💩.last == "it"
doAssert 💩.switchCount == 4
doAssert 💩.positionalCount == 4
doAssert 💩.empty.not

let 🦗 = newCrappyCli(@[])
doAssert 🦗.switchCount == 0
doAssert 🦗.positionalCount == 0
doAssert 🦗.empty

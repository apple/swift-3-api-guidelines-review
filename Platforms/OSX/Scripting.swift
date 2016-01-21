
class NSCoercionHandler : ScriptCoercionHandler {
  init()
}
class NSObjectSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}
class NSWhoseTest : ScriptWhoseTest {
  init()
  init?(coder inCoder: Coder)
}

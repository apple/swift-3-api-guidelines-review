
class NSObjectSpecifier : ScriptObjectSpecifier {
  convenience init(containerSpecifier container: ScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: ScriptClassDescription, containerSpecifier container: ScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: Coder)
  convenience init()
}

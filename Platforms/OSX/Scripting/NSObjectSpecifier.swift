
class NSObjectSpecifier : NSScriptObjectSpecifier {
  convenience init(containerSpecifier container: NSScriptObjectSpecifier, key property: String)
  init(containerClassDescription classDesc: NSScriptClassDescription, containerSpecifier container: NSScriptObjectSpecifier?, key property: String)
  init?(coder inCoder: NSCoder)
  convenience init()
}

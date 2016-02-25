
@available(OSX 10.3, *)
let NSNegateBooleanTransformerName: String
@available(OSX 10.3, *)
let NSIsNilTransformerName: String
@available(OSX 10.3, *)
let NSIsNotNilTransformerName: String
@available(OSX 10.3, *)
let NSUnarchiveFromDataTransformerName: String
@available(OSX 10.5, *)
let NSKeyedUnarchiveFromDataTransformerName: String
@available(OSX 10.3, *)
class NSValueTransformer : NSObject {
  class func setValueTransformer(_ transformer: NSValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(_ value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(_ value: AnyObject?) -> AnyObject?
}

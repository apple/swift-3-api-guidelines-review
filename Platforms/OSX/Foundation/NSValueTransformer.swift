
@available(OSX 10.3, *)
let negateBooleanTransformerName: String
@available(OSX 10.3, *)
let isNilTransformerName: String
@available(OSX 10.3, *)
let isNotNilTransformerName: String
@available(OSX 10.3, *)
let unarchiveFromDataTransformerName: String
@available(OSX 10.5, *)
let keyedUnarchiveFromDataTransformerName: String
@available(OSX 10.3, *)
class ValueTransformer : Object {
  class func setValueTransformer(transformer: ValueTransformer?, forName name: String)
  /*not inherited*/ init?(forName name: String)
  class func valueTransformerNames() -> [String]
  class func transformedValueClass() -> AnyClass
  class func allowsReverseTransformation() -> Bool
  func transformedValue(value: AnyObject?) -> AnyObject?
  func reverseTransformedValue(value: AnyObject?) -> AnyObject?
  init()
}


@available(watchOS 2.0, *)
let negateBooleanTransformerName: String
@available(watchOS 2.0, *)
let isNilTransformerName: String
@available(watchOS 2.0, *)
let isNotNilTransformerName: String
@available(watchOS 2.0, *)
let unarchiveFromDataTransformerName: String
@available(watchOS 2.0, *)
let keyedUnarchiveFromDataTransformerName: String
@available(watchOS 2.0, *)
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

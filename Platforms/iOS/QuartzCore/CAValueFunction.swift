
class CAValueFunction : Object, Coding {
  convenience init?(name: String)
  var name: String { get }
  init()
  func encodeWith(aCoder: Coder)
  init?(coder aDecoder: Coder)
}
@available(iOS 3.0, *)
let kCAValueFunctionRotateX: String
@available(iOS 3.0, *)
let kCAValueFunctionRotateY: String
@available(iOS 3.0, *)
let kCAValueFunctionRotateZ: String
@available(iOS 3.0, *)
let kCAValueFunctionScale: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleX: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleY: String
@available(iOS 3.0, *)
let kCAValueFunctionScaleZ: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslate: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateX: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateY: String
@available(iOS 3.0, *)
let kCAValueFunctionTranslateZ: String

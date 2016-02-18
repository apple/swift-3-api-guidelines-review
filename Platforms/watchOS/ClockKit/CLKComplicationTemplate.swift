
class CLKComplicationTemplate : Object, Copying {
  @NSCopying var tintColor: UIColor?
  init()
  func copy(zone: Zone = nil) -> AnyObject
}
class CLKComplicationTemplateModularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateModularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateModularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateModularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateModularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init()
}
class CLKComplicationTemplateModularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  var highlightLine2: Bool
  init()
}
class CLKComplicationTemplateModularSmallColumnsText : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  var column2Alignment: CLKComplicationColumnAlignment
  var highlightColumn2: Bool
  init()
}
class CLKComplicationTemplateModularLargeStandardBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var body1TextProvider: CLKTextProvider
  @NSCopying var body2TextProvider: CLKTextProvider?
  @NSCopying var headerImageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateModularLargeTallBody : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var bodyTextProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateModularLargeTable : CLKComplicationTemplate {
  @NSCopying var headerTextProvider: CLKTextProvider
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  @NSCopying var headerImageProvider: CLKImageProvider?
  var column2Alignment: CLKComplicationColumnAlignment
  init()
}
class CLKComplicationTemplateModularLargeColumns : CLKComplicationTemplate {
  @NSCopying var row1Column1TextProvider: CLKTextProvider
  @NSCopying var row1Column2TextProvider: CLKTextProvider
  @NSCopying var row2Column1TextProvider: CLKTextProvider
  @NSCopying var row2Column2TextProvider: CLKTextProvider
  @NSCopying var row3Column1TextProvider: CLKTextProvider
  @NSCopying var row3Column2TextProvider: CLKTextProvider
  @NSCopying var row1ImageProvider: CLKImageProvider?
  @NSCopying var row2ImageProvider: CLKImageProvider?
  @NSCopying var row3ImageProvider: CLKImageProvider?
  var column2Alignment: CLKComplicationColumnAlignment
  init()
}
class CLKComplicationTemplateUtilitarianSmallFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateUtilitarianSmallSquare : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateUtilitarianSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateUtilitarianSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateUtilitarianLargeFlat : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  @NSCopying var imageProvider: CLKImageProvider?
  init()
}
class CLKComplicationTemplateCircularSmallSimpleText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateCircularSmallSimpleImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  init()
}
class CLKComplicationTemplateCircularSmallRingText : CLKComplicationTemplate {
  @NSCopying var textProvider: CLKTextProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateCircularSmallRingImage : CLKComplicationTemplate {
  @NSCopying var imageProvider: CLKImageProvider
  var fillFraction: Float
  var ringStyle: CLKComplicationRingStyle
  init()
}
class CLKComplicationTemplateCircularSmallStackText : CLKComplicationTemplate {
  @NSCopying var line1TextProvider: CLKTextProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init()
}
class CLKComplicationTemplateCircularSmallStackImage : CLKComplicationTemplate {
  @NSCopying var line1ImageProvider: CLKImageProvider
  @NSCopying var line2TextProvider: CLKTextProvider
  init()
}

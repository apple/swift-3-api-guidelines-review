

/*!
    @class          EKAlarm
    @abstract       The EKAlarm class provides an interface for accessing and manipulating calendar event alarms.
    @discussion     The EKAlarm class represents alarms on an event. An alarm can be relative (e.g. 15 mins before) 
                    or absolute (specific time).
*/
@available(OSX 10.8, *)
class EKAlarm : EKObject, NSCopying {

  /*!
      @method     alarmWithAbsoluteDate:
      @abstract   Creates a new autoreleased alarm with an absolute trigger time.
      @param      date    The date the alarm should fire.
  */
  /*not inherited*/ init(absoluteDate date: NSDate)

  /*!
      @method     alarmWithRelativeOffset:
      @abstract   Creates a new autoreleased alarm with a relative trigger time.
      @discussion Creates a new autoreleased alarm with a relative trigger time. This offset
                  is added to the start date of the event.
  
      @param      offset    The offset from the event start that the alarm should fire.
  */
  /*not inherited*/ init(relativeOffset offset: NSTimeInterval)

  /*!
      @property   relativeOffset
      @abstract   Specifies a relative offset from an event start date to fire an alarm.
      @discussion Set this property to an appropriate negative value to establish an alarm trigger
                  relative to the start date/time of an event. Setting this clears any existing
                  date trigger.
  */
  var relativeOffset: NSTimeInterval

  /*!
      @property   absoluteDate
      @abstract   Represents an alarm that fires at a specific date.
      @discussion Set this property to a date to establish an absolute alarm trigger. Setting this
                  clears any relative interval trigger.
  */
  @NSCopying var absoluteDate: NSDate?

  /*!
      @property   structuredLocation
      @discussion Allows you to set a structured location (a location with a potential geo-coordinate)
                  on an alarm. This is used in conjunction with proximity to do geofence-based
                  triggering of reminders.
   */
  @NSCopying var structuredLocation: EKStructuredLocation?

  /*!
      @property   proximity
      @discussion Defines whether this alarm triggers via entering/exiting a geofence as defined by
                  structuredLocation.
   */
  var proximity: EKAlarmProximity

  /*!
   @property   type
   @abstract   The type of alarm, based on the action taken when triggering the alarm.
   @discussion This field is read-only; to change the type of alarm, set emailAddress for EKAlarmTypeEmail,
               soundName for EKAlarmTypeAudio or url for EKAlarmTypeProcedure.
               Setting all of those to nil will change it to EKAlarmTypeDisplay.
   */
  @available(OSX 10.8, *)
  var type: EKAlarmType { get }

  /*!
   @property   emailAddress
   @abstract   An email address that is the recipient of an email alarm, which is an alarm that triggers an email message.
   @discussion When you set the emailAddress property, the action property is set to EKAlarmTypeEmail,
               and the soundName and url properties are set to nil.
   */
  @available(OSX 10.8, *)
  var emailAddress: String?

  /*!
   @property   soundName
   @abstract   The name of the sound to play when the alarm triggers.
   @discussion The value of this property is the name of a system sound that can be used with
               the soundNamed: class method to create an NSSound object. When you set the soundName property,
               the action property is set to EKAlarmTypeAudio, and the emailAddress and url properties are set to nil.
   */
  @available(OSX 10.8, *)
  var soundName: String?
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @class       EKCalendar
    @abstract    The EKCalendar class represents a calendar for events.
*/
@available(OSX 10.8, *)
class EKCalendar : EKObject {

  /*!
      @method     calendarForEntityType:
      @abstract   Creates a new autoreleased calendar that may contain the given entity type.
      @discussion You can only create calendars that accept either reminders or events via our API. 
                  However, other servers might allow mixing the two (though it is not common).
   
      @param      entityType    The entity type that this calendar may support.
      @param      eventStore    The event store in which to create this calendar.
   */
  @available(OSX 10.8, *)
  /*not inherited*/ init(forEntityType entityType: EKEntityType, eventStore: EKEventStore)

  /*!
      @property   source
      @abstract   The source representing the 'account' this calendar belongs to.
                  This is only settable when initially creating a calendar and then
                  effectively read-only after that. That is, you can create a calendar, 
                  but you cannot move it to another source.
  */
  var source: EKSource

  /*!
      @property   calendarIdentifier
      @abstract   A unique identifier for the calendar. It is not sync-proof in that a full
                  sync will lose this identifier, so you should always have a back up plan for dealing
                  with a calendar that is no longer fetchable by this property, e.g. by title, type, color, etc.
                  Use [EKEventStore calendarWithIdentifier:] to look up the calendar by this value.
  */
  @available(OSX 10.8, *)
  var calendarIdentifier: String { get }

  /*!
      @property   title
      @abstract   The title of the calendar.
  */
  var title: String

  /*!
      @property   type
      @abstract   The type of the calendar as a EKCalendarType. This is actually based on
                  what source the calendar is in, as well as whether it is a subscribed calendar.
      @discussion CalDAV subscribed calendars have type EKCalendarTypeCalDAV with isSubscribed = YES. 
  */
  var type: EKCalendarType { get }

  /*!
      @property   allowsContentModifications
      @abstract   Represents whether you can this add, remove, or modify items in this calendar.
  */
  var allowsContentModifications: Bool { get }

  /*!
      @property   subscribed
      @abstract   YES if this calendar is a subscribed calendar.
  */
  @available(OSX 10.8, *)
  var subscribed: Bool { get }

  /*!
      @property   immutable
      @abstract   If this is set to YES, it means you cannot modify any attributes of
                  the calendar or delete it. It does NOT imply that you cannot add events 
                  or reminders to the calendar.
  */
  @available(OSX 10.8, *)
  var immutable: Bool { get }

  /*!
      @property   color
      @abstract   Returns the calendar color as a NSColor.
  */
  @NSCopying var color: NSColor

  /*!
      @property   supportedEventAvailabilities
      @discussion Returns a bitfield of supported event availabilities, or EKCalendarEventAvailabilityNone
                  if this calendar does not support setting availability on an event.
  */
  var supportedEventAvailabilities: EKCalendarEventAvailabilityMask { get }
  @available(OSX 10.8, *)
  var allowedEntityTypes: EKEntityMask { get }
  init()
}
@available(OSX 10.8, *)
class EKCalendarItem : EKObject {
  var calendar: EKCalendar

  /*!
      @property   calendarItemIdentifier
      @abstract   A unique identifier for a calendar item.
      @discussion Item identifiers are not sync-proof in that a full sync will lose
                  this identifier, so you should always have a back up plan for dealing
                  with a reminder that is no longer fetchable by this property, e.g. by title, etc.
                  Use [EKEventStore calendarItemWithIdentifier:] to look up the item by this value.
  */
  @available(OSX 10.8, *)
  var calendarItemIdentifier: String { get }

  /*!
      @property   calendarItemExternalIdentifier
      @abstract   A server-provided identifier for this calendar item
      @discussion This identifier, provided by the server, allows you to reference the same event or reminder across
                  multiple devices. For calendars stored locally on the device, including the birthday calendar,
                  it simply passes through to calendarItemIdentifier.
   
                  This identifier is unique as of creation for every calendar item.  However, there are some
                  cases where duplicate copies of a calendar item can exist in the same database, including:
                  - A calendar item was imported from an ICS file into multiple calendars
                  - An event was created in a calendar shared with the user and the user was also invited to the event
                  - The user is a delegate of a calendar that also has this event
                  - A subscribed calendar was added to multiple accounts
                  In such cases, you should choose between calendar items based on other factors, such as
                  the calendar or source.
  
                  This identifier is the same for all occurrences of a recurring event. If you wish to differentiate
                  between occurrences, you may want to use the start date.
   
                  In addition, there are two caveats for Exchange-based calendars:
                  - This identifier will be different between EventKit on iOS versus OS X
                  - This identifier will be different between devices for EKReminders
  */
  @available(OSX 10.8, *)
  var calendarItemExternalIdentifier: String { get }
  var title: String
  var location: String?
  var notes: String?
  @available(OSX 10.8, *)
  @NSCopying var URL: NSURL?
  var lastModifiedDate: NSDate? { get }
  @available(OSX 10.8, *)
  var creationDate: NSDate? { get }
  @available(OSX 10.8, *)
  @NSCopying var timeZone: NSTimeZone?
  @available(OSX 10.8, *)
  var hasAlarms: Bool { get }
  @available(OSX 10.8, *)
  var hasRecurrenceRules: Bool { get }
  @available(OSX 10.8, *)
  var hasAttendees: Bool { get }
  @available(OSX 10.8, *)
  var hasNotes: Bool { get }
  var attendees: [EKParticipant]? { get }
  var alarms: [EKAlarm]?

  /*!
      @method     addAlarm:
      @abstract   Adds an alarm to this item.
      @discussion This method add an alarm to an item. Be warned that some calendars can only
                  allow a certain maximum number of alarms. When this item is saved, it will
                  truncate any extra alarms from the array.
  */
  func addAlarm(alarm: EKAlarm)

  /*!
      @method     removeAlarm:
      @abstract   Removes an alarm from this item.
  */
  func removeAlarm(alarm: EKAlarm)

  /*!
      @property   recurrenceRules
      @abstract   An array of EKRecurrenceRules, or nil if none.
  */
  @available(OSX 10.8, *)
  var recurrenceRules: [EKRecurrenceRule]?
  func addRecurrenceRule(rule: EKRecurrenceRule)
  func removeRecurrenceRule(rule: EKRecurrenceRule)
  init()
}

/*!
    @const      EKErrorDomain 
    @abstract   Error domain for NSError values stemming from the EventKit Framework API.
    @discussion This error domain is used as the domain for all NSError instances stemming from the
                EventKit Framework.
*/
@available(OSX 10.8, *)
let EKErrorDomain: String
enum EKErrorCode : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case EventNotMutable
  case NoCalendar
  case NoStartDate
  case NoEndDate
  case DatesInverted
  case InternalFailure
  case CalendarReadOnly
  case DurationGreaterThanRecurrence
  case AlarmGreaterThanRecurrence
  case StartDateTooFarInFuture
  case StartDateCollidesWithOtherOccurrence
  case ObjectBelongsToDifferentStore
  case InvitesCannotBeMoved
  case InvalidSpan
  case CalendarHasNoSource
  case CalendarSourceCannotBeModified
  case CalendarIsImmutable
  case SourceDoesNotAllowCalendarAddDelete
  case RecurringReminderRequiresDueDate
  case StructuredLocationsNotSupported
  case ReminderLocationsNotSupported
  case AlarmProximityNotSupported
  case CalendarDoesNotAllowEvents
  case CalendarDoesNotAllowReminders
  case SourceDoesNotAllowReminders
  case SourceDoesNotAllowEvents
  case PriorityIsInvalid
  case InvalidEntityType
  case ProcedureAlarmsNotMutable
  case EventStoreNotAuthorized
  case OSNotSupported
  case Last
}

extension EKErrorCode : _BridgedNSError {
  static var _NSErrorDomain: String { get }
  typealias RawValue = Int
}
enum EKEventAvailability : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotSupported
  case Busy
  case Free
  case Tentative
  case Unavailable
}
enum EKEventStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Confirmed
  case Tentative
  case Canceled
}

/*!
    @class      EKEvent
    @abstract   The EKEvent class represents an occurrence of an event.
*/
@available(OSX 10.8, *)
class EKEvent : EKCalendarItem {

  /*!
      @method     eventWithEventStore:
      @abstract   Creates a new autoreleased event object.
  */
  /*not inherited*/ init(eventStore: EKEventStore)

  /*!
      @property   eventIdentifier
      @abstract   A unique identifier for this event.
      @discussion This identifier can be used to look the event up using [EKEventStore eventWithIdentifier:].
                  You can use this not only to simply fetch the event, but also to validate the event
                  has not been deleted out from under you when you get an external change notification
                  via the EKEventStore database changed notification. If eventWithIdentifier: returns nil,
                  the event was deleted.
  
                  Please note that if you change the calendar of an event, this ID will likely change. It is
                  currently also possible for the ID to change due to a sync operation. For example, if
                  a user moved an event on a different client to another calendar, we'd see it as a 
                  completely new event here.
  */
  var eventIdentifier: String { get }

  /*!
      @property   allDay
      @abstract   Indicates this event is an 'all day' event.
  */
  var allDay: Bool

  /*!
       @property   startDate
       @abstract   The start date for the event.
       @discussion This property represents the start date for this event. Floating events (such
                   as all-day events) are currently always returned in the default time zone.
                   ([NSTimeZone defaultTimeZone])
   */
  @NSCopying var startDate: NSDate

  /*!
      @property   endDate
      @abstract   The end date for the event.
  */
  @NSCopying var endDate: NSDate

  /*!
      @property   structuredLocation
      @abstract   Allows you to set a structured location (a location with a potential geo-coordinate) on an
                  event. The getter for EKEvent’s location property just returns the structured location’s title.
                  The setter for EKEvent’s location property is equivalent to
                  [event setStructuredLocation:[EKStructuredLocation locationWithTitle:…]].
   */
  @available(OSX 10.11, *)
  @NSCopying var structuredLocation: EKStructuredLocation?

  /*!
      @method     compareStartDateWithEvent
      @abstract   Comparison function you can pass to sort NSArrays of EKEvents by start date.
  */
  func compareStartDateWithEvent(other: EKEvent) -> NSComparisonResult

  /*!
      @property   organizer
      @abstract   The organizer of this event, or nil.
  */
  var organizer: EKParticipant? { get }

  /*!
      @property   availability
      @abstract   The availability setting for this event.
      @discussion The availability setting is used by CalDAV and Exchange servers to indicate
                  how the time should be treated for scheduling. If the calendar the event is
                  currently in does not support event availability, EKEventAvailabilityNotSupported
                  is returned.
  */
  var availability: EKEventAvailability

  /*!
      @property   status
      @abstract   The status of the event.
      @discussion While the status offers four different values in the EKEventStatus enumeration,
                  in practice, the only actionable and reliable status is canceled. Any other status
                  should be considered informational at best. You cannot set this property. If you
                  wish to cancel an event, you should simply remove it using removeEvent:.
  */
  var status: EKEventStatus { get }

  /*!
      @property   isDetached
      @abstract   Represents whether this event is detached from a recurring series.
      @discussion If this EKEvent is an instance of a repeating event, and an attribute of this 
                  EKEvent has been changed from the default value generated by the repeating event,
                  isDetached will return YES. If the EKEvent is unchanged from its default state, or
                  is not a repeating event, isDetached returns NO.
  */
  var isDetached: Bool { get }

  /*!
      @property   occurrenceDate:
      @abstract   The occurrence date of an event if it is part of a recurring series.
      @discussion This is only set if the event is part of a recurring series. It returns
                  the date on which this event was originally scheduled to occur. For occurrences
                  that are unmodified from the recurring series, this is the same as the start date.
                  This value will remain the same even if the event has been detached and its start 
                  date has changed. Floating events (such as all-day events) are currently returned
                  in the default time zone. ([NSTimeZone defaultTimeZone])
   */
  @available(OSX 10.8, *)
  var occurrenceDate: NSDate { get }

  /*!
       @method     refresh
       @abstract   Refreshes an event object to ensure it's still valid.
       @discussion When the database changes, your application is sent an EKEventStoreChangedNotification
                   note. You should generally consider all EKEvent instances to be invalid as soon as
                   you receive the notification. However, for events you truly care to keep around, you
                   can call this method. It ensures the record is still valid by ensuring the event and
                   start date are still valid. It also attempts to refresh all properties except those
                   you might have modified. If this method returns NO, the record has been deleted or is
                   otherwise invalid. You should not continue to use it. If it returns YES, all is still
                   well, and the record is ready for continued use. You should only call this method on
                   events that are more critical to keep around if possible, such as an event that is
                   being actively edited, as this call is fairly heavyweight. Do not use it to refresh
                   the entire selected range of events you might have had selected. It is mostly pointless
                   anyway, as recurrence information may have changed.
  */
  func refresh() -> Bool

  /*!
      @method     birthdayContactIdentifier
      @abstract   Specifies the contact identifier of the person this event was created for.
      @discussion This property is only valid for events in the built-in Birthdays calendar. It specifies
                  the contact identifier (for use with the Contacts framework) of the person this event was
                  created for. For any other type of event, this property returns nil.
   */
  @available(OSX 10.11, *)
  var birthdayContactIdentifier: String? { get }

  /*!
      @property   birthdayPersonUniqueID
      @abstract   Specifies the address book unique ID of the person this event was created for.
      @disussion  This property is only valid for events in the built-in Birthdays calendar. It specifies
                  the Address Book unique ID of the person this event was created for. For any other type of event,
                  this property returns nil.
   */
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use birthdayContactIdentifier instead")
  var birthdayPersonUniqueID: String? { get }
  init()
}

/*!
    @enum           EKSpan
    @abstract       Values for controlling what occurrences to affect in a recurring event.
    @discussion     This enumerated type is used to indicate the scope of a change being made to a repeating event. EKSpanThisEvent 
                    indicates the changes should apply only to this event, EKSpanFutureEvents indicates the changes should apply to 
                    this event and all future events in the pattern.
    @constant       EKSpanThisEvent        Affect this event only.
    @constant       EKSpanFutureEvents     Affect this event and all after it.
*/
enum EKSpan : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case ThisEvent
  case FutureEvents
}
typealias EKEventSearchCallback = (EKEvent, UnsafeMutablePointer<ObjCBool>) -> Void

/*!
    @class       EKEventStore
    @abstract    The EKEventStore class provides an interface for accessing and manipulating calendar events and reminders.
    @discussion  The EKEventStore class is the main point of contact for accessing Calendar data. You must
                 create a EKEventStore object in order to retrieve/add/delete events or reminders from the Calendar database.
                 
                 Events, Reminders, and Calendar objects retrieved from an event store cannot be used with any other event
                 store. It is generally best to hold onto a long-lived instance of an event store, most
                 likely as a singleton instance in your application.
*/
@available(OSX 10.8, *)
class EKEventStore : NSObject {

  /*!
      @method     authorizationStatusForEntityType:
      @discussion Returns the authorization status for the given entity type
   */
  @available(OSX 10.9, *)
  class func authorizationStatusForEntityType(entityType: EKEntityType) -> EKAuthorizationStatus

  /*!
          @method     init
   */
  @available(OSX 10.9, *)
  init()

  /*!
      @method     initWithSources:
      @abstract   Creates a new event store that only includes items and calendars for a subset of sources.
      @param      sources The sources you want this event store to recognize. This may include delegate sources.
   */
  @available(OSX 10.11, *)
  init(sources: [EKSource])

  /*!
      @method     requestAccessToEntityType:completion:
      @discussion Users are able to grant or deny access to event and reminder data on a per-app basis. To request access to
                  event and/or reminder data, call -requestAccessToEntityType:completion:. This will not block the app while
                  the user is being asked to grant or deny access.
   
                  Until access has been granted for an entity type, the event store will not contain any calendars for that
                  entity type, and any attempt to save will fail. The user will only be prompted the first time access is
                  requested; any subsequent instantiations of EKEventStore will use the existing permissions. When the user
                  taps to grant or deny access, the completion handler will be called on an arbitrary queue.
  */
  @available(OSX 10.9, *)
  func requestAccessToEntityType(entityType: EKEntityType, completion: EKEventStoreRequestAccessCompletionHandler)

  /*!
      @property   eventStoreIdentifier
      @abstract   Returns a unique identifier string representing this calendar store.
  */
  var eventStoreIdentifier: String { get }

  /*!
      @property   delegateSources
      @abstract   Returns an unordered array of sources for all available delegates.
      @discussion By default, delegates are not included in an event store's sources. To work with delegates,
                  you can create a new event store and pass in the sources, including sources returned from this
                  method, that you're interested in.
      @see        initWithSources:
   */
  @available(OSX 10.11, *)
  var delegateSources: [EKSource] { get }

  /*!
      @property   sources
      @abstract   Returns an unordered array of sources.
  */
  @available(OSX 10.8, *)
  var sources: [EKSource] { get }

  /*!
      @method     sourceWithIdentifier:
      @abstract   Returns a source with a specified identifier.
  */
  @available(OSX 10.8, *)
  func sourceWithIdentifier(identifier: String) -> EKSource

  /*!
      @method     calendarsForEntityType
      @abstract   Returns calendars that support a given entity type (reminders, events)
   */
  @available(OSX 10.8, *)
  func calendarsForEntityType(entityType: EKEntityType) -> [EKCalendar]

  /*!
      @property   defaultCalendarForNewEvents
      @abstract   Returns the calendar that events should be added to by default.
  */
  var defaultCalendarForNewEvents: EKCalendar { get }

  /*!
      @method     defaultCalendarForNewReminders
      @abstract   Returns the calendar that reminders should be added to by default.
  */
  @available(OSX 10.8, *)
  func defaultCalendarForNewReminders() -> EKCalendar

  /*!
      @method     calendarWithIdentifier:
      @abstract   Returns a calendar with a specified identifier.
  */
  @available(OSX 10.8, *)
  func calendarWithIdentifier(identifier: String) -> EKCalendar?

  /*!
      @method     saveCalendar:commit:error:
      @abstract   Saves changes to a calendar, or adds a new calendar to the database.
      @discussion This method attempts to save the given calendar to the calendar database. It
                  returns YES if successful and NO otherwise. Passing a calendar fetched from
                  another EKEventStore instance into this function will raise an exception.
                  On WatchOS, saving changes is not supported.
  
      @param      calendar    The calendar to save.
      @param      commit      Pass YES to cause the database to save. You can pass NO to save multiple
                              calendars and then call commit: to save them all at once.
      @param      error       If an error occurs, this will contain a valid NSError object on exit.
  */
  @available(OSX 10.8, *)
  func saveCalendar(calendar: EKCalendar, commit: Bool) throws

  /*!
      @method     removeCalendar:commit:error:
      @abstract   Removes a calendar from the database.
      @discussion This method attempts to delete the given calendar from the calendar database. It
                  returns YES if successful and NO otherwise. Passing a calendar fetched from
                  another EKEventStore instance into this function will raise an exception.
  
                  If the calendar supports multiple entity types (allowedEntityTypes), but the user has 
                  not granted you access to all those entity types, then we will delete all of the entity types 
                  for which you have access and remove that entity type from the allowedEntityTypes.
                  For example: If a calendar supports both events and reminders, but you only have access to reminders,
                  we will delete all the reminders and make the calendar only support events.
   
                  If you have access to all of its allowedEntityTypes, then it will delete the calendar and
                  all of the events and reminders in the calendar.
   
                  On WatchOS, modifying the database is not supported.
   
      @param      calendar    The calendar to delete.
      @param      commit      Pass YES to cause the database to save. You can pass NO to batch multiple
                              changes and then call commit: to save them all at once.
      @param      error       If an error occurs, this will contain a valid NSError object on exit.
  */
  @available(OSX 10.8, *)
  func removeCalendar(calendar: EKCalendar, commit: Bool) throws

  /*!
      @method     calendarItemWithIdentifier:
      @abstract   Returns either a reminder or the first occurrence of an event.
  */
  @available(OSX 10.8, *)
  func calendarItemWithIdentifier(identifier: String) -> EKCalendarItem

  /*!
      @method     calendarItemsWithExternalIdentifier:
      @abstract   Returns either matching reminders or the first occurrences of any events matching
                  the given external identifier.
      @discussion This method returns a set of EKEvents or EKReminders with the given external identifier.
                  Due to reasons discussed in -[EKCalendarItem calendarItemExternalIdentifier], there may be
                  more than one matching calendar item.
   
      @param      externalIdentifier  The value obtained from EKCalendarItem's
                  calendarItemExternalIdentifier property
      @result     An unsorted array of EKCalendarItem instances
  */
  @available(OSX 10.8, *)
  func calendarItemsWithExternalIdentifier(externalIdentifier: String) -> [EKCalendarItem]
  @available(OSX 10.8, *)
  func saveEvent(event: EKEvent, span: EKSpan, commit: Bool) throws
  @available(OSX 10.8, *)
  func removeEvent(event: EKEvent, span: EKSpan, commit: Bool) throws

  /*!
      @method     eventWithIdentifier:
      @abstract   Returns the first occurrence of an event matching the given event identifier.
   
      @param      identifier   The eventIdentifier to search for.
      @result     An EKEvent object, or nil if not found.
  */
  func eventWithIdentifier(identifier: String) -> EKEvent?

  /*!
      @method     eventsMatchingPredicate:
      @abstract   Searches for events that match the given predicate.
      @discussion This call executes a search for the events indicated by the predicate passed to it.
                  It only includes events which have been committed (e.g. those saved using 
                  saveEvent:commit:NO are not included until commit: is called.)
   
                  It is synchronous. If you want async behavior, you should either use dispatch_async or
                  NSOperation to run the query someplace other than the main thread, and then funnel the
                  array back to the main thread.
   
      @param      predicate   The predicate to invoke. If this predicate was not created with the predicate
                              creation functions in this class, an exception is raised.
      @result     An array of EKEvent objects, or nil. There is no guaranteed order to the events.
  */
  func eventsMatchingPredicate(predicate: NSPredicate) -> [EKEvent]

  /*!
      @method     enumerateEventsMatchingPredicate:usingBlock:
      @abstract   Searches for events that match the given predicate.
      @discussion This call executes a search for the events indicated by the predicate passed to it, calling
                  the block specified in the callback parameter for each event. It only includes events which 
                  have been committed (e.g. those saved using saveEvent:commit:NO are not included until commit: is called.)
   
                  This method is synchronous. If you want async behavior, you should either use dispatch_async or
                  NSOperation to run the query someplace other than the main thread.
   
      @param      predicate   The predicate to invoke. If this predicate was not created with the predicate
                              creation functions in this class, an exception is raised.
      @param      block       The block to call for each event. Your block should return YES in the stop
                              parameter to stop iterating.
  */
  func enumerateEventsMatchingPredicate(predicate: NSPredicate, usingBlock block: EKEventSearchCallback)

  /*!
      @method     predicateForEventsWithStartDate:endDate:calendars:
      @abstract   Creates a predicate for use with eventsMatchingPredicate or enumerateEventsMatchingPredicate:usingBlock:.
      @discussion Creates a simple query predicate to search for events within a certain date range. At present,
                  this will return events in the default time zone ([NSTimeZone defaultTimeZone]).
  
                  OS X Only: For performance reasons, this method will only return events within a four year timespan.
                  If the date range between the startDate and endDate is greater than four years, then it will be shortened 
                  to the first four years.
   
      @param      startDate   The start date.
      @param      endDate     The end date.
      @param      calendars   The calendars to search for events in, or nil to search all calendars.
  */
  func predicateForEventsWithStartDate(startDate: NSDate, endDate: NSDate, calendars: [EKCalendar]?) -> NSPredicate

  /*!
      @method     saveReminder:commit:error:
      @abstract   Saves changes to a reminder.
      @discussion This method attempts to save the reminder to the event store database. It returns YES if
                  successful and NO otherwise. Passing a reminder fetched from another EKEventStore instance
                  into this function will raise an exception.
  
                  After a reminder is successfully saved, its fields are updated to the latest values in
                  the database.
   
                  On WatchOS, saving changes is not supported.
  
      @param      reminder    The reminder to save.
      @param      commit      Whether to save to the database or not. Pass NO to batch changes together and
                              commit with [EKEventStore commit:].
      @param      error       If an error occurs, this will contain a valid NSError object on exit.
  */
  @available(OSX 10.8, *)
  func saveReminder(reminder: EKReminder, commit: Bool) throws

  /*!
      @method     removeReminder:commit:error:
      @abstract   Removes a reminder from the event store.
      @discussion This method attempts to remove the reminder from the event store database. It returns YES if
                  successful and NO otherwise. Passing a reminder from another EKEventStore into this function
                  will raise an exception. After a reminder is removed, it is no longer tied to this event store.
   
                  On WatchOS, modifying the database is not supported.
  
      @param      reminder    The reminder to save.
      @param      commit      Whether to save to the database or not. Pass NO to batch changes together and
                              commit with [EKEventStore commit:].
      @param      error       If an error occurs, this will contain a valid NSError object on exit.
  */
  @available(OSX 10.8, *)
  func removeReminder(reminder: EKReminder, commit: Bool) throws

  /*!
      @method     fetchRemindersMatchingPredicate:completion:
      @abstract   Fetches reminders asynchronously.
      @discussion This method fetches reminders asynchronously and returns a value which can be
                  used in cancelFetchRequest: to cancel the request later if desired. The completion
                  block is called with an array of reminders that match the given predicate (or potentially nil).
                  This only includes reminders which have been committed (e.g. those saved using 
                  saveReminder:commit:NO are not included until commit: is called.)
  */
  @available(OSX 10.8, *)
  func fetchRemindersMatchingPredicate(predicate: NSPredicate, completion: ([EKReminder]?) -> Void) -> AnyObject

  /*!
      @method     cancelFetchRequest:
      @discussion Given a value returned from fetchRemindersMatchingPredicate, this method can be used to
                  cancel the request. Once called, the completion block specified in fetchReminders... will
                  not be called.
  */
  @available(OSX 10.8, *)
  func cancelFetchRequest(fetchIdentifier: AnyObject)

  /*!
      @method     predicateForRemindersInCalendars:
      @abstract   Fetch all reminders in a set of calendars.
      @discussion You can pass nil for calendars to fetch from all available calendars.
  */
  @available(OSX 10.8, *)
  func predicateForRemindersInCalendars(calendars: [EKCalendar]?) -> NSPredicate

  /*!
      @method     predicateForIncompleteRemindersWithDueDateStarting:ending:calendars:
      @abstract   Fetch incomplete reminders in a set of calendars.
      @discussion You can use this method to search for incomplete reminders due in a range.
                  You can pass nil for start date to find all reminders due before endDate.
                  You can pass nil for both start and end date to get all incomplete reminders
                  in the specified calendars.
                  You can pass nil for calendars to fetch from all available calendars.
  */
  @available(OSX 10.8, *)
  func predicateForIncompleteRemindersWithDueDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate

  /*!
      @method     predicateForCompletedRemindersWithCompletionDateStarting:ending:calendars:
      @abstract   Fetch completed reminders in a set of calendars.
      @discussion You can use this method to search for reminders completed between a range of dates.
                  You can pass nil for start date to find all reminders completed before endDate.
                  You can pass nil for both start and end date to get all completed reminders
                  in the specified calendars.
                  You can pass nil for calendars to fetch from all available calendars.
  */
  @available(OSX 10.8, *)
  func predicateForCompletedRemindersWithCompletionDateStarting(startDate: NSDate?, ending endDate: NSDate?, calendars: [EKCalendar]?) -> NSPredicate

  /*!
      @method     commit:
      @abstract   Commits pending changes to the database.
      @discussion If you use saveCalendar/saveEvent/removeCalendar/removeEvent, etc. and you pass NO to their
                  parameter, you are batching changes for a later commit. This method does that commit. This
                  allows you to save the database only once for many additions or changes.  If you pass
                  YES to methods' commit parameter, then you don't need to call this method.
   
                  This method will return YES as long as nothing went awry, even if nothing was actually
                  committed. If it returns NO, error should contain the reason it became unhappy.
   
                  On WatchOS, modifying the database is not supported.
  */
  @available(OSX 10.8, *)
  func commit() throws

  /*!
      @method     reset
      @abstract   Resets the event store.
      @discussion You can use this method to forget ALL changes made to the event store (all additions, all
                  fetched objects, etc.). It essentially is as if you released the store and then created a
                  new one. It brings it back to its initial state. All objects ever created/fetched, etc.
                  using this store are no longer connected to it and are considered invalid.
  */
  @available(OSX 10.8, *)
  func reset()

  /*!
      @method     refreshSourcesIfNecessary
      @abstract   Cause a sync to potentially occur taking into account the necessity of it.
      @discussion You can call this method to pull new data from remote sources.  
                  This only updates the event store's data.  If you want to update your objects after 
                  refreshing the sources, you should call refresh on each of them afterwards.
                  On iOS, this sync only occurs if deemed necessary.  
                  On OS X, this will occur regardless of necessity, but may change in a future release to match the iOS behavior.
                  On WatchOS, initiating sync is not available. Sync will occur automatically with the paired iOS device.
   */
  @available(OSX 10.8, *)
  func refreshSourcesIfNecessary()
}
typealias EKEventStoreRequestAccessCompletionHandler = (Bool, NSError?) -> Void

/*!
    @constant   EKEventStoreChangedNotification
    @discussion Notification name sent out when the database is changed by either an external process,
                another event store in the same process, or by calling saveEvent: or removeEvent: on a
                store you are managing. When you receive this notification, you should consider all EKEvent
                instances you have to be invalid. If you had selected events for a date range using
                eventsMatchingPredicate, etc. for display, you should release them and re-fetch the events
                again. If you have an event you are actively using (e.g. you are currently viewing details
                for it or editing it), you can call [EKEvent refresh] to try to revalidate it against the
                latest state of the database. If that method returns YES, you can continue to use the event,
                otherwise, you should release it and abandon what you were doing with it. The view
                controllers provided by EventKitUI automatically deal with this for you.
                This notification will also be posted if access to events or reminders is changed by the user.
*/
@available(OSX 10.8, *)
let EKEventStoreChangedNotification: String
class EKObject : NSObject {
  var hasChanges: Bool { get }
  var new: Bool { get }
  func reset()
  func rollback()
  func refresh() -> Bool
  init()
}

/*!
    @class      EKParticipant
    @abstract   Abstract class representing a participant attached to an event.
*/
@available(OSX 10.8, *)
class EKParticipant : EKObject, NSCopying {

  /*!
      @property   url
      @abstract   URL representing this participant.
  */
  var URL: NSURL { get }

  /*!
      @property   name
      @abstract   Name of this participant.
  */
  var name: String? { get }

  /*!
      @property   participantStatus
      @abstract   The status of the attendee.
      @discussion Returns the status of the attendee as a EKParticipantStatus value.
  */
  var participantStatus: EKParticipantStatus { get }

  /*!
      @property   participantRole
      @abstract   The role of the attendee.
      @discussion Returns the role of the attendee as a EKParticipantRole value.
  */
  var participantRole: EKParticipantRole { get }

  /*!
      @property   participantType
      @abstract   The type of the attendee.
      @discussion Returns the type of the attendee as a EKParticipantType value.
  */
  var participantType: EKParticipantType { get }

  /*!
      @property   isCurrentUser
      @abstract   A boolean indicating whether this participant represents the
                  owner of this account.
   */
  @available(OSX 10.9, *)
  var currentUser: Bool { get }

  /*!
      @method     contactPredicate
      @abstract   Returns a predicate to use with Contacts.framework to retrieve the corresponding
                  CNContact instance.
      @discussion This method returns a predicate that can be used with a CNContactStore to fetch
                  a CNContact instance for this participant, if one exists.
   */
  @available(OSX 10.11, *)
  var contactPredicate: NSPredicate { get }

  /*!
      @method     ABPersonInAddressBook
      @abstract   Returns the ABPerson that represents this participant.
      @discussion This method returns the ABPerson that represents this participant,
                  if a match can be found based on email address in the address book
                  passed. If we cannot find the participant, nil is returned.
   */
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use contactPredicate instead")
  func ABPersonInAddressBook(addressBook: ABAddressBook) -> ABPerson?
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @class      EKRecurrenceDayOfWeek
    @abstract   Class which represents a day of the week this recurrence will occur.
    @discussion EKRecurrenceDayOfWeek specifies either a simple day of the week, or the nth instance
                of a particular day of the week, such as the third Tuesday of every month. The week
                number is only valid when used with monthly or yearly recurrences, since it would
                be otherwise meaningless.

                Valid values for dayOfTheWeek are integers 1-7, which correspond to days of the week
                with Sunday = 1. Valid values for weekNumber portion are (+/-)1-53, where a negative
                value indicates a value from the end of the range. For example, in a yearly event -1
                means last week of the year. -1 in a Monthly recurrence indicates the last week of
                the month. 

                The value 0 also indicates the weekNumber is irrelevant (every Sunday, etc.).

                Day-of-week weekNumber values that are out of bounds for the recurrence type will
                result in an exception when trying to initialize the recurrence. In particular,
                weekNumber must be zero when passing EKRecurrenceDayOfWeek objects to initialize a weekly 
                recurrence.
*/
@available(OSX 10.8, *)
class EKRecurrenceDayOfWeek : NSObject, NSCopying {

  /*!
       @method     dayOfWeek:
       @abstract   Creates an autoreleased object with a day of the week and week number of zero.
  */
  convenience init(_ dayOfTheWeek: EKWeekday)

  /*!
       @method     dayOfWeek:weekNumber:
       @abstract   Creates an autoreleased object with a specific day of week and week number.
  */
  convenience init(_ dayOfTheWeek: EKWeekday, weekNumber: Int)

  /*!
       @method     initWithDayOfTheWeek:weekNumber:
       @abstract   Creates an day-of-week object with a specific day of week and week number.
  */
  init(dayOfTheWeek: EKWeekday, weekNumber: Int)

  /*!
       @property   dayOfTheWeek
       @abstract   The day of the week.
  */
  var dayOfTheWeek: EKWeekday { get }

  /*!
       @property   weekNumber
       @abstract   The week number.
  */
  var weekNumber: Int { get }
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @class      EKRecurrenceEnd
    @abstract   Class which represents when a recurrence should end.
    @discussion EKRecurrenceEnd is an attribute of EKRecurrenceRule that defines how long
                the recurrence is scheduled to repeat. The recurrence can be defined either
                with an NSUInteger that indicates the total number times it repeats, or with
                an NSDate, after which it no longer repeats. An event which is set to never
                end should have its EKRecurrenceEnd set to nil.
                 
                If the end of the pattern is defines with an NSDate, the client must pass a
                valid NSDate, nil cannot be passed. If the end of the pattern is defined as
                terms of a number of occurrences, the occurrenceCount passed to the initializer
                must be positive, it cannot be 0. If the client attempts to initialize a
                EKRecurrenceEnd with a nil NSDate or OccurrenceCount of 0, an exception is raised.
                 
                A EKRecurrenceEnd initialized with an end date will return 0 for occurrenceCount.
                One initialized with a number of occurrences will return nil for its endDate.
*/
@available(OSX 10.8, *)
class EKRecurrenceEnd : NSObject, NSCopying {

  /*!
      @method     recurrenceEndWithEndDate:
      @abstract   Creates an autoreleased recurrence end with a specific end date.
  */
  convenience init(endDate: NSDate)

  /*!
      @method     recurrenceEndWithOccurrenceCount:
      @abstract   Creates an autoreleased recurrence end with a maximum occurrence count.
  */
  convenience init(occurrenceCount: Int)

  /*!
      @property   endDate
      @abstract   The end date of this recurrence, or nil if it's count-based.
  */
  var endDate: NSDate? { get }

  /*!
      @property   occurrenceCount
      @abstract   The maximum occurrence count, or 0 if it's date-based.
  */
  var occurrenceCount: Int { get }
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @class      EKRecurrenceRule
    @abstract   Represents how an event repeats.
    @discussion This class describes the recurrence pattern for a repeating event. The recurrence rules that 
                can be expressed are not restricted to the recurrence patterns that can be set in Calendar's UI. 
 
                It is currently not possible to directly modify a EKRecurrenceRule or any of its properties. 
                This functionality is achieved by creating a new EKRecurrenceRule, and setting an event to use the new rule. 
                When a new recurrence rule is set on an EKEvent, that change is not saved until the client 
                has passed the modified event to EKEventStore's saveEvent: method.
 */
@available(OSX 10.8, *)
class EKRecurrenceRule : EKObject, NSCopying {

  /*!
      @method     initRecurrenceWithFrequency:interval:end:
      @abstract   Simple initializer to create a recurrence.
      @discussion This is used to create a simple recurrence with a specific type, interval and end. If interval is
                  0, an exception is raised. The end parameter can be nil.
  */
  init(recurrenceWithFrequency type: EKRecurrenceFrequency, interval: Int, end: EKRecurrenceEnd?)

  /*!
      @method     initRecurrenceWithFrequency:interval:daysOfTheWeek:daysOfTheMonth:monthsOfTheYear:weeksOfTheYear:daysOfTheYear:setPositions:end:
      @abstract   The designated initializer.
      @discussion This can be used to build any kind of recurrence rule. But be aware that certain combinations make
                  no sense and will be ignored. For example, if you pass daysOfTheWeek for a daily recurrence, they
                  will be ignored.
      @param      type            The type of recurrence
      @param      interval        The interval. Passing zero will raise an exception.
      @param      daysOfTheWeek   An array of EKRecurrenceDayOfWeek objects. Valid for all recurrence types except daily. Ignored otherwise.
                                  Corresponds to the BYDAY value in the iCalendar specification.
      @param      daysOfTheMonth  An array of NSNumbers ([+/-] 1 to 31). Negative numbers infer counting from the end of the month.
                                  For example, -1 means the last day of the month. Valid only for monthly recurrences. Ignored otherwise.
                                  Corresponds to the BYMONTHDAY value in the iCalendar specification.
      @param      monthsOfTheYear An array of NSNumbers (1 to 12). Valid only for yearly recurrences. Ignored otherwise. Corresponds to
                                  the BYMONTH value in the iCalendar specification.
      @param      weeksOfTheYear  An array of NSNumbers ([+/1] 1 to 53). Negative numbers infer counting from the end of the year.
                                  For example, -1 means the last week of the year. Valid only for yearly recurrences. Ignored otherwise.
                                  Corresponds to the BYWEEKNO value in the iCalendar specification.
      @param      daysOfTheYear   An array of NSNumbers ([+/1] 1 to 366). Negative numbers infer counting from the end of the year.
                                  For example, -1 means the last day of the year. Valid only for yearly recurrences. Ignored otherwise.
                                  Corresponds to the BYYEARDAY value in the iCalendar specification.
      @param      setPositions    An array of NSNumbers ([+/1] 1 to 366). Used at the end of recurrence computation to filter the list
                                  to the positions specified. Negative numbers indicate starting at the end, i.e. -1 indicates taking the
                                  last result of the set. Valid when daysOfTheWeek, daysOfTheMonth, monthsOfTheYear, weeksOfTheYear, or 
                                  daysOfTheYear is passed. Ignored otherwise. Corresponds to the BYSETPOS value in the iCalendar specification.
      @param      end             The recurrence end, or nil.
  */
  init(recurrenceWithFrequency type: EKRecurrenceFrequency, interval: Int, daysOfTheWeek days: [EKRecurrenceDayOfWeek]?, daysOfTheMonth monthDays: [NSNumber]?, monthsOfTheYear months: [NSNumber]?, weeksOfTheYear: [NSNumber]?, daysOfTheYear: [NSNumber]?, setPositions: [NSNumber]?, end: EKRecurrenceEnd?)

  /*!
      @property       calendarIdentifier;
      @description    Calendar used by this recurrence rule.
  */
  var calendarIdentifier: String { get }

  /*!
      @property       recurrenceEnd
      @discussion     This property defines when the the repeating event is scheduled to end. The end date can be specified by a number of
                      occurrences, or with an end date.
  */
  @NSCopying var recurrenceEnd: EKRecurrenceEnd?

  /*!
      @property       frequency
      @discussion     This property designates the unit of time used to describe the recurrence pattern.
  */
  var frequency: EKRecurrenceFrequency { get }

  /*!
      @property       interval
      @discussion     The interval of a EKRecurrenceRule is an integer value which specifies how often the recurrence rule repeats
                      over the unit of time described by the EKRecurrenceFrequency. For example, if the EKRecurrenceFrequency is
                      EKRecurrenceWeekly, then an interval of 1 means the pattern is repeated every week. A value of 2
                      indicates it is repeated every other week, 3 means every third week, and so on. The value must be a
                      positive integer; 0 is not a valid value, and nil will be returned if the client attempts to initialize a
                      rule with a negative or zero interval. 
  */
  var interval: Int { get }

  /*!
      @property       firstDayOfTheWeek
      @discussion     Recurrence patterns can specify which day of the week should be treated as the first day. Possible values for this
                      property are integers 0 and 1-7, which correspond to days of the week with Sunday = 1. Zero indicates that the 
                      property is not set for this recurrence. The first day of the week only affects the way the recurrence is expanded
                      for weekly recurrence patterns with an interval greater than 1. For those types of recurrence patterns, the 
                      Calendar framework will set firstDayOfTheWeek to be 2 (Monday). In all other cases, this property will be set 
                      to zero. The iCalendar spec stipulates that the default value is Monday if this property is not set.
  */
  var firstDayOfTheWeek: Int { get }

  /*!
      @property       daysOfTheWeek
      @discussion     This property is valid for rules whose EKRecurrenceFrequency is EKRecurrenceFrequencyWeekly, EKRecurrenceFrequencyMonthly, or 
                      EKRecurrenceFrequencyYearly. This property can be accessed as an array containing one or more EKRecurrenceDayOfWeek objects
                      corresponding to the days of the week the event recurs. For all other EKRecurrenceRules, this property is nil.
                      This property corresponds to BYDAY in the iCalendar specification.
  */
  var daysOfTheWeek: [EKRecurrenceDayOfWeek]? { get }

  /*!
      @property       daysOfTheMonth
      @discussion     This property is valid for rules whose EKRecurrenceFrequency is EKRecurrenceFrequencyMonthly, and that were initialized 
                      with one or more specific days of the month (not with a day of the week and week of the month). This property can be
                      accessed as an array containing one or more NSNumbers corresponding to the days of the month the event recurs.
                      For all other EKRecurrenceRules, this property is nil. This property corresponds to BYMONTHDAY in the iCalendar 
                      specification.
  */
  var daysOfTheMonth: [NSNumber]? { get }

  /*!
      @property       daysOfTheYear
      @discussion     This property is valid for rules whose EKRecurrenceFrequency is EKRecurrenceFrequencyYearly. This property can be accessed 
                      as an array containing one or more NSNumbers corresponding to the days of the year the event recurs. For all other 
                      EKRecurrenceRules, this property is nil. This property corresponds to BYYEARDAY in the iCalendar specification. It should
                      contain values between 1 to 366 or -366 to -1.
  */
  var daysOfTheYear: [NSNumber]? { get }

  /*!
      @property       weeksOfTheYear
      @discussion     This property is valid for rules whose EKRecurrenceFrequency is EKRecurrenceFrequencyYearly. This property can be accessed 
                      as an array containing one or more NSNumbers corresponding to the weeks of the year the event recurs. For all other 
                      EKRecurrenceRules, this property is nil. This property corresponds to BYWEEK in the iCalendar specification. It should
                      contain integers from 1 to 53 or -1 to -53.
  */
  var weeksOfTheYear: [NSNumber]? { get }

  /*!
      @property       monthsOfTheYear
      @discussion     This property is valid for rules whose EKRecurrenceFrequency is EKRecurrenceFrequencyYearly. This property can be accessed 
                      as an array containing one or more NSNumbers corresponding to the months of the year the event recurs. For all other 
                      EKRecurrenceRules, this property is nil. This property corresponds to BYMONTH in the iCalendar specification.
  */
  var monthsOfTheYear: [NSNumber]? { get }

  /*!
      @property       setPositions
      @discussion     This property is valid for rules which have a valid daysOfTheWeek, daysOfTheMonth, weeksOfTheYear, or monthsOfTheYear property. 
                      It allows you to specify a set of ordinal numbers to help choose which objects out of the set of selected events should be
                      included. For example, setting the daysOfTheWeek to Monday-Friday and including a value of -1 in the array would indicate
                      the last weekday in the recurrence range (month, year, etc). This value corresponds to the iCalendar BYSETPOS property.
  */
  var setPositions: [NSNumber]? { get }
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @class      EKReminder
    @abstract   The EKReminder class represents a reminder (task/todo).
*/
@available(OSX 10.8, *)
class EKReminder : EKCalendarItem {

  /*!
      @method     reminderWithEventStore:
      @abstract   Creates a new reminder in the given event store.
  */
  /*not inherited*/ init(eventStore: EKEventStore)

  /*!
      @property   startDateComponents
      @abstract   The start date of the task, as date components.
      @discussion The use of date components allows the start date and its time zone to be represented in a single property. 
                  A nil time zone represents a floating date.  Setting a date component without a hour, minute and second component will set allDay to YES.
                  If you set this property, the calendar must be set to NSCalendarIdentifierGregorian. An exception is raised otherwise.
  */
  @NSCopying var startDateComponents: NSDateComponents?

  /*!
      @property   dueDateComponents
      @abstract   The date by which this reminder should be completed.
      @discussion The use of date components allows the due date and its time zone to be represented in a single property. 
                  A nil time zone represents a floating date.  Setting a date component without a hour, minute and second component will set allDay to YES.
                  If you set this property, the calendar must be set to NSCalendarIdentifierGregorian. An exception is raised otherwise.
   
                  On iOS, if you set the due date for a reminder, you must also set a start date, otherwise you will receive
                  an error (EKErrorNoStartDate) when attempting to save this reminder. This is not a requirement on OS X.
  */
  @NSCopying var dueDateComponents: NSDateComponents?

  /*!
      @property   completed
      @abstract   Whether or not the reminder is completed. 
      @discussion Setting it to YES will set the completed date to the current date. 
                  Setting it to NO will set the completed date to nil.
  */
  var completed: Bool

  /*!
      @property   completionDate
      @abstract   The date on which this reminder was completed.
  */
  @NSCopying var completionDate: NSDate?

  /*!
      @property   priority
      @abstract   The priority of the reminder.
      @discussion Priorities run from 1 (highest) to 9 (lowest).  A priority of 0 means no priority.
                  Saving a reminder with any other priority will fail.
                  Per RFC 5545, priorities of 1-4 are considered "high," a priority of 5 is "medium," and priorities of 6-9 are "low."
   */
  var priority: Int
  init()
}
@available(OSX 10.8, *)
class EKSource : EKObject {
  var sourceIdentifier: String { get }
  var sourceType: EKSourceType { get }
  var title: String { get }

  /*!
   @method      calendarsForEntityType
   @abstract    Returns the calendars that belong to this source that 
                support a given entity type (reminders, events)
   */
  @available(OSX 10.8, *)
  func calendarsForEntityType(entityType: EKEntityType) -> Set<EKCalendar>
  init()
}
@available(OSX 10.8, *)
class EKStructuredLocation : EKObject, NSCopying {
  convenience init(title: String)
  var title: String
  var geoLocation: CLLocation?
  var radius: Double
  init()
  @available(OSX 10.8, *)
  func copyWithZone(zone: NSZone) -> AnyObject
}

/*!
    @enum       EKAuthorizationStatus
    @abstract   This enumerated type is used to indicate the currently granted authorization status for a specific
                entity type.
    @constant   EKAuthorizationStatusNotDetermined  The user has not yet made a choice regarding whether this application
                                                    may access the service.
    @constant   EKAuthorizationStatusRestricted     This application is not authorized to access the service.
                                                    The user cannot change this application’s status, possibly due to
                                                    active restrictions such as parental controls being in place.
    @constant   EKAuthorizationStatusDenied         The user explicitly denied access to the service for this application.
    @constant   EKAuthorizationStatusAuthorized     This application is authorized to access the service.
 */
@available(OSX 10.9, *)
enum EKAuthorizationStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case NotDetermined
  case Restricted
  case Denied
  case Authorized
}
enum EKWeekday : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Sunday
  case Monday
  case Tuesday
  case Wednesday
  case Thursday
  case Friday
  case Saturday
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdaySunday instead")
  static var EKSunday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayMonday instead")
  static var EKMonday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayTuesday instead")
  static var EKTuesday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayWednesday instead")
  static var EKWednesday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayThursday instead")
  static var EKThursday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdayFriday instead")
  static var EKFriday: EKWeekday { get }
  @available(OSX, introduced=10.8, deprecated=10.11, message="Use EKWeekdaySaturday instead")
  static var EKSaturday: EKWeekday { get }
}

/*!
    @enum       EKRecurrenceFrequency
    @abstract   The frequency of a recurrence
    @discussion EKRecurrenceFrequency designates the unit of time used to describe the recurrence.
                It has four possible values, which correspond to recurrence rules that are defined
                in terms of days, weeks, months, and years.
*/
enum EKRecurrenceFrequency : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Daily
  case Weekly
  case Monthly
  case Yearly
}

/*!
 @enum       EKParticipantType
 @abstract   Value representing the type of attendee.
 */
enum EKParticipantType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Person
  case Room
  case Resource
  case Group
}

/*!
 @enum       EKParticipantRole
 @abstract   Value representing the role of a meeting participant.
 */
enum EKParticipantRole : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Required
  case Optional
  case Chair
  case NonParticipant
}

/*!
 @enum       EKParticipantScheduleStatus
 @abstract   Value representing the status of a meeting invite.
 
 @constant   EKParticipantScheduleStatusNone                     Default value. Indicates that no
                                                                 invitation has been sent yet.
 @constant   EKParticipantScheduleStatusPending                  The invitation is in the process of being
                                                                 sent.
 @constant   EKParticipantScheduleStatusSent                     The invitation has been sent, but we have
                                                                 no way of determing if it was successfully
                                                                 delivered.
 @constant   EKParticipantScheduleStatusDelivered                The invitation has been sent and
                                                                 successfully delivered.
 @constant   EKParticipantScheduleStatusRecipientNotRecognized   The invitation wasn't delivered because we
                                                                 source doesn't recognize the recipient.
 @constant   EKParticipantScheduleStatusNoPrivileges             The invitation wasn't delivered because of
                                                                 insufficient privileges.
 @constant   EKParticipantScheduleStatusDeliveryFailed           The invitation wasn't delivered most
                                                                 likely due to a temporary failure.
 @constant   EKParticipantScheduleStatusCannotDeliver            The invitation wasn't delivered because
                                                                 we're unsure how to deliver it. This is a
                                                                 permanent failure.
 @constant   EKParticipantScheduleStatusRecipientNotAllowed      The invitation wasn't delivered because
                                                                 scheduling with the participant isn't
                                                                 allowed. This is a permanent failure.
 */
enum EKParticipantScheduleStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Pending
  case Sent
  case Delivered
  case RecipientNotRecognized
  case NoPrivileges
  case DeliveryFailed
  case CannotDeliver
  case RecipientNotAllowed
}

/*!
 @enum       EKParticipantStatus
 @abstract   Value representing the status of a meeting participant.
 */
enum EKParticipantStatus : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Unknown
  case Pending
  case Accepted
  case Declined
  case Tentative
  case Delegated
  case Completed
  case InProcess
}

/*!
 @enum       EKCalendarType
 @abstract   An enum representing the type of a calendar.
 
 @constant   EKCalendarTypeLocal        This calendar is sync'd from either Mobile Me or tethered.
 @constant   EKCalendarTypeCalDAV       This calendar is from a CalDAV server.
 @constant   EKCalendarTypeExchange     This calendar comes from an Exchange server.
 @constant   EKCalendarTypeSubscription This is a locally subscribed calendar.
 @constant   EKCalendarTypeBirthday     This is the built-in birthday calendar.
 */
enum EKCalendarType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case CalDAV
  case Exchange
  case Subscription
  case Birthday
}
struct EKCalendarEventAvailabilityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var None: EKCalendarEventAvailabilityMask { get }
  static var Busy: EKCalendarEventAvailabilityMask { get }
  static var Free: EKCalendarEventAvailabilityMask { get }
  static var Tentative: EKCalendarEventAvailabilityMask { get }
  static var Unavailable: EKCalendarEventAvailabilityMask { get }
}
enum EKSourceType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Local
  case Exchange
  case CalDAV
  case MobileMe
  case Subscribed
  case Birthdays
}

/*!
 @enum       EKEntityType
 @abstract   A value which specifies an entity type of event or reminder.
 */
enum EKEntityType : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case Event
  case Reminder
}

/*!
 @enum       EKEntityMask
 @abstract   A bitmask based on EKEntityType that can be used to specify multiple entities at once.
 */
struct EKEntityMask : OptionSetType {
  init(rawValue: UInt)
  let rawValue: UInt
  static var Event: EKEntityMask { get }
  static var Reminder: EKEntityMask { get }
}

/*!
 @enum       EKAlarmProximity
 @abstract   A value indicating whether an alarm is triggered by entering or exiting a geofence.
 
 @constant   EKAlarmProximityNone       The alarm has no proximity trigger.
 @constant   EKAlarmProximityEnter      The alarm is set to fire when entering a region (geofence).
 @constant   EKAlarmProximityLeave      The alarm is set to fire when leaving a region (geofence).
 */
enum EKAlarmProximity : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case None
  case Enter
  case Leave
}

/*!
 @enum       EKAlarmType
 @abstract   A value which specifies the action that occurs when the alarm is triggered.
 
 @constant   EKAlarmTypeDisplay          The alarm displays a message.
 @constant   EKAlarmTypeAudio            The alarm plays a sound.
 @constant   EKAlarmTypeProcedure        The alarm opens a URL.
 @constant   EKAlarmTypeEmail            The alarm sends an email.
 */
enum EKAlarmType : Int {
  init?(rawValue: Int)
  var rawValue: Int { get }
  case Display
  case Audio
  case Procedure
  case Email
}

/*!
 @enum       EKReminderPriority
 @abstract   A priority for a reminder.
 @discussion RFC 5545 allows priority to be specified with an integer in the range of 0-9,
             with 0 representing an undefined priority, 1 the highest priority, and 9 the lowest priority.
             Clients are encouraged to use these values when setting a reminders's priority,
             but is is possible to specify any integer value from 0 to 9.
 
 @constant   EKReminderPriorityNone          The reminder has no priority set.
 @constant   EKReminderPriorityHigh          The reminder is high priority.
 @constant   EKReminderPriorityMedium        The reminder is medium priority.
 @constant   EKReminderPriorityLow           The reminder is low priority.
 */
enum EKReminderPriority : UInt {
  init?(rawValue: UInt)
  var rawValue: UInt { get }
  case None
  case High
  case Medium
  case Low
}
@available(OSX, introduced=10.8, deprecated=10.10)
func EK_LOSE_FRACTIONAL_SECONDS_DO_NOT_USE()
@available(OSX, introduced=10.8, deprecated=10.10)
func DATE_COMPONENTS_DO_NOT_USE()
@available(OSX, introduced=10.8, deprecated=10.10)
func DATETIME_COMPONENTS_DO_NOT_USE()

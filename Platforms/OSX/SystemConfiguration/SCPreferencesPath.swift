
@available(OSX 10.1, *)
func SCPreferencesPathCreateUniqueChild(_ prefs: SCPreferences, _ prefix: CFString) -> CFString?
@available(OSX 10.1, *)
func SCPreferencesPathGetValue(_ prefs: SCPreferences, _ path: CFString) -> CFDictionary?
@available(OSX 10.1, *)
func SCPreferencesPathGetLink(_ prefs: SCPreferences, _ path: CFString) -> CFString?
@available(OSX 10.1, *)
func SCPreferencesPathSetValue(_ prefs: SCPreferences, _ path: CFString, _ value: CFDictionary) -> Bool
@available(OSX 10.1, *)
func SCPreferencesPathSetLink(_ prefs: SCPreferences, _ path: CFString, _ link: CFString) -> Bool
@available(OSX 10.1, *)
func SCPreferencesPathRemoveValue(_ prefs: SCPreferences, _ path: CFString) -> Bool

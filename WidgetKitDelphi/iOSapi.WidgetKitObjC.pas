
unit iOSapi.WidgetKitObjC;

interface

uses
  Macapi.ObjectiveC, Macapi.CoreFoundation, iOSapi.CocoaTypes, iOSapi.Foundation;

type
  WidgetKitObjCWrapper = interface;

  WidgetKitObjCWrapperClass = interface(NSObjectClass)
    ['{A161B718-026E-4F57-8B84-6E5137708410}']
    {class} procedure reloadAllTimelines; cdecl;
    {class} procedure reloadTimelinesOfKind(kind: NSString); cdecl;
  end;

  WidgetKitObjCWrapper = interface(NSObject)
    ['{CEC32F08-C1D4-46F9-829C-DDF012F944EB}']
  end;
  TWidgetKitObjCWrapper = class(TOCGenericImport<WidgetKitObjCWrapperClass, WidgetKitObjCWrapper>) end;

implementation

procedure WidgetKitObjCLoader; cdecl; external framework 'WidgetKitObjC';

end.
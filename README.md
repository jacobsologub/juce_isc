# JUCE ISC

ISC License JUCE modules

This repository is here for anyone needing a quick way to get [**juce_core**](https://github.com/WeAreROLI/JUCE/tree/master/modules/juce_core) and [**juce_events**](https://github.com/WeAreROLI/JUCE/tree/master/modules/juce_events) ISC License modules into a C++/Objective-C++ project.

[JUCE](https://github.com/WeAreROLI/JUCE) is an open source library subject to commercial or open-source licensing. Please make sure to read the [JUCE](https://github.com/WeAreROLI/JUCE) license before using any code from this repository.

### Installation
  1. `git clone --recursive https://github.com/jacobsologub/juce_isc.git`
  2. add `juce_isc/` `juce_isc/juce/modules/` and `juce_isc/JuceLibraryCode/` to your header search path(s).
  3. compile `juce_isc.cpp` or `juce_isc.mm` with `-fno-objc-arc` compiler flag for Objective-C++ projects.

### Usage
```
#include <juce_isc.h>

juce::String hello {};
hello.append ("h", 1);
hello.append ("e", 1);
hello.append ("l", 1);
hello.append ("l", 1);
hello.append ("o", 1);

jassert (hello.contains ("hello"));
```

If you are planning to use any JUCE classes that make use of [`juce::MessageManager`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/messages/juce_MessageManager.h) e.g. [`juce::ActionBroadcaster`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/broadcasters/juce_ActionBroadcaster.h), [`juce::AsyncUpdater`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/broadcasters/juce_AsyncUpdater.h), [`juce::ChangeBroadcaster`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/broadcasters/juce_ChangeBroadcaster.h), [`juce::Timer`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/timers/juce_Timer.h) etc., then you should call [`juce::initialiseJuce_GUI();`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/messages/juce_Initialisation.h#L38) somewhere in the beginning of your application's run loop and [`juce::shutdownJuce_GUI();`](https://github.com/WeAreROLI/JUCE/blob/master/modules/juce_events/messages/juce_Initialisation.h#L48) right before your application terminates.
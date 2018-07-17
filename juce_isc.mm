#if !defined (__has_feature) || __has_feature (objc_arc)
 #error "This file can not be compiled with ARC support."
#endif

#include "AppConfig.h"
#include "JuceLibraryCode/include_juce_core.mm"
#include "JuceLibraryCode/include_juce_events.mm"

#if JUCE_IOS
namespace juce {
    int juce_iOSMain (int argc, const char* argv[], void* customDelegatePtr) {
        return 0;
    }
}
#endif

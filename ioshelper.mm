#include "ioshelper.h"
#include <iostream>
#import <Foundation/Foundation.h>

// Constructor implementation
ObjectiveCppClass::ObjectiveCppClass() {
    std::cout << "ObjectiveCppClass Class CALLED" << std::endl;
}

// Static method implementation
QString ObjectiveCppClass::getObjectiveCppMessage() {
    std::cout << "Output from Objective-C++: Hello, Yemi Omo Boda Fagbohun!!!" << std::endl;
    NSString *objcMessage = @"Hello, Yemi Omo Boda Fagbohun!!!";
    return QString::fromNSString(objcMessage);
}

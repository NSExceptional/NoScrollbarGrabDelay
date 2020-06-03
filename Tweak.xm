//
//  Tweak.xm
//  NoScrollbarGrabDelay
//
//  Created by Tanner Bennett on 2020-05-28
//  Copyright © 2020 Tanner Bennett. All rights reserved.
//

@interface UIScrollViewKnobLongPressGestureRecognizer : UILongPressGestureRecognizer
@property (readonly) BOOL forPointer;
@end

%hook UIScrollViewKnobLongPressGestureRecognizer
- (NSTimeInterval)delay {
    return 0;
}
- (NSTimeInterval)minimumPressDuration {
    return 0;
}
%end

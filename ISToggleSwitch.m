//
//  ISToggleSwitch.m
//  Caffeine
//
//  Created by Michael Jones on 2/2/20.
//

#import "ISToggleSwitch.h"

@implementation ISToggleSwitch

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    // Drawing code here.
}

@end


@implementation ISToggleSwitchCell

- (void)drawSegment:(NSInteger)segment inFrame:(NSRect)frame withView:(NSView *)controlView
{
    [controlView setNeedsDisplay:YES];
    [super drawSegment:segment inFrame:frame withView:controlView];
}

- (void)drawWithFrame:(NSRect)frame inView:(NSView *)view
{
    if([self selectedSegment] == 0) {
        [self setLabel:@"" forSegment:0];
        [self setLabel:@"OFF" forSegment:1];
        [self setWidth:16.0f forSegment:0];
        [self setWidth:40.0f forSegment:1];
    }
    
    if([self selectedSegment] == 1) {
        [self setLabel:@"ON" forSegment:0];
        [self setLabel:@"" forSegment:1];
        [self setWidth:40.0f forSegment:0];
        [self setWidth:16.0f forSegment:1];
    }
    [super drawWithFrame:frame inView:view];
}

@end

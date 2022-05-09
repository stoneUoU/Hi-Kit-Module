//
//  HiAlignmentLabel.m
//  Hi-Kit-Module
//
//  Created by stone on 2022/5/9.
//

#import "HiAlignmentLabel.h"

@implementation HiAlignmentLabel

@synthesize verticalAlignment = verticalAlignment_;

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.verticalAlignment = HiVerticalAlignmentMiddle;
    }
    return self;
}

- (void)setVerticalAlignment:(HiVerticalAlignment)verticalAlignment {
    verticalAlignment_ = verticalAlignment;
    [self setNeedsLayout];
}


- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGRect textRect = [super textRectForBounds:bounds limitedToNumberOfLines:numberOfLines];
    switch (self.verticalAlignment) {
        case HiVerticalAlignmentTop:
            textRect.origin.y = bounds.origin.y;
            break;
        case HiVerticalAlignmentBottom:
            textRect.origin.y = bounds.origin.y + bounds.size.height - textRect.size.height;
            break;
        case HiVerticalAlignmentMiddle:
            // Fall through.
        default:
            textRect.origin.y = bounds.origin.y + (bounds.size.height - textRect.size.height) / 2.0;
    }
    return textRect;
}

- (void)drawTextInRect:(CGRect)requestedRect {
    CGRect actualRect = [self textRectForBounds:requestedRect limitedToNumberOfLines:self.numberOfLines];
    [super drawTextInRect:actualRect];
}

//Example:
//lazy var exampleLabel: HiAlignmentLabel = {
//    let exampleLabel = HiAlignmentLabel()
//    exampleLabel.textAlignment = .left
//    exampleLabel.verticalAlignment = HiVerticalAlignmentMiddle;
//    exampleLabel.font = UIFont.boldSystemFont(ofSize: 25)
//    exampleLabel.textColor = UIColor.white
//    exampleLabel.text = "****";
//    return exampleLabel
//}()

@end


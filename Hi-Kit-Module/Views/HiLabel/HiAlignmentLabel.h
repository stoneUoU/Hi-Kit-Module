//
//  HiAlignmentLabel.h
//  Hi-Kit-Module
//
//  Created by stone on 2022/5/9.
//

#import <UIKit/UIKit.h>

typedef enum {
    HiVerticalAlignmentTop = 0, //default
    HiVerticalAlignmentMiddle,
    HiVerticalAlignmentBottom,
    
} HiVerticalAlignment;

@interface HiAlignmentLabel : UILabel {

@private
    HiVerticalAlignment _verticalAlignment;
}

@property (nonatomic) HiVerticalAlignment verticalAlignment;

@end

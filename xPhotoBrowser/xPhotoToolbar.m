

#import "xPhotoToolbar.h"
#import "xPhoto.h"

@interface xPhotoToolbar()
{
    UILabel *indexLabel_;
    int totalPage_;
    int curPage_;
}
@end

@implementation xPhotoToolbar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        //
        self.autoresizingMask = UIViewAutoresizingFlexibleTopMargin;
        //
        indexLabel_ = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        indexLabel_.font = [UIFont fontWithName:@"PingFangSC-Regular" size:11];
        indexLabel_.backgroundColor = [UIColor clearColor];
        indexLabel_.textColor = [UIColor colorWithRed:0.698039 green:0.698039 blue:0.698039 alpha:1.0];
        indexLabel_.textAlignment = NSTextAlignmentLeft;
        indexLabel_.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        [self addSubview:indexLabel_];
    }
    return self;
}

- (void)setTotalPage:(int)totalPage
{
    totalPage_ = totalPage;
    indexLabel_.text = [NSString stringWithFormat:@"%d/%d", curPage_, totalPage_];
    
}

- (void)setCurPage:(int)curPage
{
    curPage_ = curPage;
    indexLabel_.text = [NSString stringWithFormat:@"%d/%d", curPage_, totalPage_];
}

@end

//
//  MainView.m
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "MainView.h"

@implementation MainView {
    UIButton *originButton;
    UIButton *destinationButton;
    UIButton *mapButton;
}

- (id)initWithFrame:(CGRect)frame {
    NSLog(@"%@ %@", NSStringFromClass(self.class), NSStringFromSelector(_cmd));
    self = [super initWithFrame:frame];
    self.backgroundColor = UIColor.whiteColor;
    
    UIViewController *superViewController = [[self superview] getViewController];
    
    CGFloat topInset = 24;
    CGFloat leftInset = 24;
    CGFloat rightInset = 24;
    CGFloat internalMarginSize = 16;
    CGFloat elementWidth = self.bounds.size.width - leftInset - rightInset;
    CGFloat buttonHeight = 54;
    CGFloat elementHeight = 32;
    CGFloat halfSizeElementWidth = (elementWidth - internalMarginSize) / 2;
    
#pragma mark originButton
    CGRect originButtonFrame = CGRectMake(leftInset, topInset, elementWidth, buttonHeight);
    originButton = [[UIButton alloc] initWithFrame:originButtonFrame title:@"Откуда"];
    [originButton addTarget:superViewController action:@selector(presentOriginSelectionView) forControlEvents:UIControlEventTouchUpInside];
    [originButton setEnabled:false];
    [self addSubview:originButton];
    
#pragma mark destinationButton
    CGRect destinationButtonFrame = CGRectMake(leftInset,
                                               originButtonFrame.origin.y + originButtonFrame.size.height + internalMarginSize,
                                               elementWidth, buttonHeight);
    destinationButton = [[UIButton alloc] initWithFrame:destinationButtonFrame title:@"Куда"];
    [destinationButton addTarget:superViewController action:@selector(presentDestinationSelectionView) forControlEvents:UIControlEventTouchUpInside];
    [destinationButton setEnabled:false];
    [self addSubview:destinationButton];
    
#pragma mark mapButton
    CGRect mapButtonFrame = CGRectMake(leftInset,
                                       UIScreen.mainScreen.bounds.size.height - originButtonFrame.size.height * 3 - internalMarginSize * 2,
                                       elementWidth, buttonHeight);
    mapButton = [[UIButton alloc] initWithFrame:mapButtonFrame title:@"Показать маршрут"];
    [mapButton addTarget:superViewController action:@selector(presentMapView) forControlEvents:UIControlEventTouchUpInside];
    [mapButton setEnabled:false];
    [self addSubview:mapButton];
    
#pragma mark PERSON COUNT
    
#pragma mark adultsCountLabel
    CGRect adultsCountLabelFrame = CGRectMake(leftInset * 2,
                                              destinationButtonFrame.origin.y + destinationButtonFrame.size.height + 2 * internalMarginSize,
                                              halfSizeElementWidth,
                                              elementHeight);
    UILabel *adultsCountLabel = [UILabel newWithFrame:adultsCountLabelFrame usingTitle:@"Взрослые"];
    adultsCountLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:adultsCountLabel];
    
#pragma mark adultsLabel
    CGRect adultsLabelFrame = CGRectMake(leftInset,
                                         adultsCountLabelFrame.origin.y + adultsCountLabelFrame.size.height + internalMarginSize,
                                         halfSizeElementWidth / 2 - internalMarginSize / 2,
                                         elementHeight);
    UILabel *adultsLabel = [UILabel newWithFrame:adultsLabelFrame usingTitle:@"0"];
    adultsLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:adultsLabel];
    
#pragma mark adultCountStepper
    CGRect adultsCountStepperFrame = CGRectMake(adultsLabel.frame.origin.x + leftInset,
                                                adultsCountLabelFrame.origin.y + adultsCountLabelFrame.size.height + internalMarginSize,
                                                halfSizeElementWidth / 2,
                                                elementHeight);
    UIStepper *adultCountStepper = [[UIStepper alloc] initWithFrame:adultsCountStepperFrame];
    [self addSubview:adultCountStepper];
    
#pragma mark childrenCountLabel
    CGRect childrenCountLabelFrame = CGRectMake((UIScreen.mainScreen.bounds.size.width + leftInset) - halfSizeElementWidth,
                                                destinationButtonFrame.origin.y + destinationButtonFrame.size.height + 2 * internalMarginSize,
                                                halfSizeElementWidth,
                                                elementHeight);
    UILabel *childrenCountLabel = [UILabel newWithFrame:childrenCountLabelFrame usingTitle:@"Дети"];
    childrenCountLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:childrenCountLabel];
    
#pragma mark childrenLabel
    CGRect childrenLabelFrame = CGRectMake(UIScreen.mainScreen.bounds.size.width - (halfSizeElementWidth + leftInset),
                                           adultsCountLabelFrame.origin.y + adultsCountLabelFrame.size.height + internalMarginSize,
                                           halfSizeElementWidth / 2 - internalMarginSize / 2,
                                           elementHeight);
    UILabel *childrenLabel = [UILabel newWithFrame:childrenLabelFrame usingTitle:@"0"];
    childrenLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:childrenLabel];
    
#pragma mark childrenCountStepper
    CGRect childrenCountStepperFrame = CGRectMake(UIScreen.mainScreen.bounds.size.width - halfSizeElementWidth,
                                                  childrenCountLabelFrame.origin.y + childrenCountLabelFrame.size.height + internalMarginSize,
                                                  halfSizeElementWidth / 2,
                                                  elementHeight);
    UIStepper *childrenCountStepper = [[UIStepper alloc] initWithFrame:childrenCountStepperFrame];
    [self addSubview:childrenCountStepper];
    
#pragma mark TRANSFER COUNT
    
#pragma mark transfersCountLabel
    CGRect tansfersCountLabelFrame = CGRectMake(leftInset * 2,
                                                adultsLabelFrame.origin.y + adultsLabelFrame.size.height + 3 * internalMarginSize,
                                                elementWidth * 2 / 3,
                                                elementHeight);
    UILabel *tansfersCountLabel = [UILabel newWithFrame:tansfersCountLabelFrame usingTitle:@"Пересадки:    0"];
    tansfersCountLabel.textAlignment = NSTextAlignmentLeft;
    [self addSubview:tansfersCountLabel];
    
#pragma mark transfersCountStepper
    CGRect tansfersCountStepperFrame = CGRectMake(tansfersCountLabel.frame.origin.x + leftInset * 5,
                                                  adultsLabelFrame.origin.y + adultsLabelFrame.size.height + 3 * internalMarginSize,
                                                  elementWidth * 1 / 3,
                                                  elementHeight);
    UIStepper *tansfersCountStepper = [[UIStepper alloc] initWithFrame:tansfersCountStepperFrame];
    [self addSubview:tansfersCountStepper];
    
    return self;
}

- (void)activateButtons {
    [originButton setEnabled:true];
    [destinationButton setEnabled:true];
    [mapButton setEnabled:true];
}

- (void)setTitle:(NSString *)title forOriginButton:(BOOL)isOrigin {
    if (isOrigin) {
        [originButton setTitle:[[NSString alloc] initWithFormat:@"Откуда: %@", title] forState:UIControlStateNormal];
    } else {
        [destinationButton setTitle:[[NSString alloc] initWithFormat:@"Куда: %@", title] forState:UIControlStateNormal];
    }
}


@end


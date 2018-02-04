//
//  CitiesViewCell.m
//  Tickets
//
//  Created by Александр on 04.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import "CitiesViewCell.h"

@implementation CitiesViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        _cityNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(20.0, 0.0, [UIScreen
                                                                          mainScreen].bounds.size.width / 2.0, 44.0)];
        _cityNameLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:_cityNameLabel];
        _rightLabel = [[UILabel alloc] initWithFrame: CGRectMake([UIScreen mainScreen].bounds.size.width /
                                                                 2.0, 0.0, [UIScreen mainScreen].bounds.size.width / 2.0, 44.0)];
        _rightLabel.textAlignment = NSTextAlignmentCenter;
        [self.contentView addSubview:_rightLabel];
    }
    return self;
}

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}

@end

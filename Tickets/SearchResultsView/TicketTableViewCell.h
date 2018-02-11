//
//  TicketTableViewCell.h
//  Tickets
//
//  Created by Александр on 11.02.2018.
//  Copyright © 2018 Александр. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Ticket.h"

@interface TicketTableViewCell : UITableViewCell
@property(nonatomic, strong) Ticket *ticket;
@end

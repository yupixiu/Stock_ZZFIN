//
//  SearchViewController.h
//  Stock
//
//  Created by mac on 2017/9/2.
//  Copyright © 2017年 stock. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^searchViewCancelBlock)(void);

@interface SearchViewController : UIViewController<UISearchResultsUpdating,UISearchBarDelegate,UISearchControllerDelegate>

@property (nonatomic, copy) searchViewCancelBlock searchViewCancelBlock;

@end

//
//  RNFLAnimatedImage.h
//  RNNative
//
//  Created by Marcin Kornek on 14/04/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <React/RCTEventDispatcher.h>
#import <React/RCTView.h>
#import "FLAnimatedImage/FLAnimatedImage.h"

@class RCTEventDispatcher;

@interface RNFLAnimatedImage : UIView

@property (nonatomic, assign) NSString *src;

- (instancetype)initView;

@end

//
//  RNFLAnimatedImageManager.m
//  RNNative
//
//  Created by Marcin Kornek on 14/04/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>
#import "RNFLAnimatedImageManager.h"
#import "RNFLAnimatedImage.h"

@implementation RNFLAnimatedImageManager

RCT_EXPORT_MODULE();

@synthesize bridge = _bridge;


- (UIView *)view
{
  return [[RNFLAnimatedImage alloc] initView];
}

+ (BOOL)requiresMainQueueSetup
{
  return NO;
}

- (dispatch_queue_t)methodQueue
{
  return dispatch_get_main_queue();
}

RCT_EXPORT_VIEW_PROPERTY(src, NSString);

@end

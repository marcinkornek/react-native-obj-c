//
//  RNFLAnimatedImage.m
//  RNNative
//
//  Created by Marcin Kornek on 14/04/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FLAnimatedImage/FLAnimatedImage.h"

#import <React/RCTBridgeModule.h>
#import <React/RCTEventDispatcher.h>
#import <React/UIView+React.h>
#import <React/RCTLog.h>

#import "RNFLAnimatedImage.h"

@implementation RNFLAnimatedImage : UIView  {
  
  RCTEventDispatcher *_eventDispatcher;
  FLAnimatedImage *_image;
  FLAnimatedImageView *_imageView;
  
}

- (instancetype)initView
{
  if ((self = [super init])) {
    _imageView = [[FLAnimatedImageView alloc] init];
  }
  
  return self;
}

- (void)removeFromSuperview
{
  [super removeFromSuperview];
}

-(void)reloadImage
{
  _image = [FLAnimatedImage animatedImageWithGIFData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_src]]];
  if (_image) {
    _imageView.animatedImage = _image;
  }
}

- (void)layoutSubviews
{
  _imageView.frame = self.bounds;
  [self addSubview:_imageView];
}

- (void)setSrc:(NSString *)src
{
  if (![src isEqual:_src]) {
    _src = [src copy];
    [self reloadImage];
  }
}

@end

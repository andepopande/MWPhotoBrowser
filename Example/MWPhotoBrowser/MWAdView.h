//
//  MWAdView.h
//  MWPhotoBrowser_Example
//
//  Created by Andreas Krawczyk on 29.09.21.
//  Copyright © 2021 Michael Waterfall. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "MWPhotoProtocol.h"

@interface MWAdView : NSObject <MWPhoto>

@property (nonatomic, strong) UIImage *underlyingImage;

@property (nonatomic, strong) NSString *caption;

@end


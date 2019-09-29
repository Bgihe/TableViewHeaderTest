//
//  PrefixHeader.swift
//  JGNote
//
//  Created by apple on 2019/8/9.
//  Copyright © 2019 apple. All rights reserved.
//

import Foundation
import UIKit

public let KScreenWidth: CGFloat = UIScreen.main.bounds.size.width
public let KScreenHeight: CGFloat = UIScreen.main.bounds.size.height
public let kScreenBounds: CGRect = UIScreen.main.bounds


public let kStatusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
public let kNavBarHeight: CGFloat = 44.0
public let kTabBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height > 20 ? 83 : 49
public let kTopHeight: CGFloat = (kStatusBarHeight + kNavBarHeight)
public let kSafeTopPadding: CGFloat = (UIApplication.shared.keyWindow?.safeAreaInsets.top)!
public let kSafeBottomPadding: CGFloat = (UIApplication.shared.keyWindow?.safeAreaInsets.bottom)!


public func ValidInt(value: Any) -> Bool {return value is Int}

//#define ValidNull(f) (f!=nil && [f isKindOfClass:[NSNull class]])

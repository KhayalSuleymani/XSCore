//
//  UIKit.swift
//  XSCore
//
//  Created by khayal on 30.06.23.
//

import UIKit

// MARK: Typealiases...
public typealias LaunchOptions = [UIApplication.LaunchOptionsKey : Any]
public typealias Application = UIApplication

// MARK: PROTOCOLS...
public protocol ApplicationDelegate: UIApplicationDelegate { }
public protocol TableViewDelegate: UITableViewDelegate { }

// MARK: CLASSES...
open class Responder: UIResponder { }
open class Window: UIWindow { }

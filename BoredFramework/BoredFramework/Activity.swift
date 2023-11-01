//
//  Activity.swift
//  BoredFramework
//
//  Created by Erez Hod on 29/10/23.
//

import Foundation

public struct Activity: Codable {
    public let activity: String
    public let type: String
    public let participants: Int
    public let price: Double
    public let link: String
    public let key: String
    public let accessibility: Double
}

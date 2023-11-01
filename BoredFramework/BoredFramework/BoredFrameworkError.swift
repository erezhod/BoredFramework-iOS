//
//  BoredFrameworkError.swift
//  BoredFramework
//
//  Created by Erez Hod on 29/10/23.
//

import Foundation

public enum BoredFrameworkError: Error {
    case invalidURL
    case requestError(_ error: Error)
    case decodingError(_ error: DecodingError.Context)
    
    public var localizedDescription: String {
        switch self {
        case .invalidURL: return "Invalid URL"
        case .requestError(let error): return "Request error: \(error.localizedDescription)"
        case .decodingError(let error): return "Decoding error: \(error.debugDescription)"
        }
    }
}

//
//  BoredFramework.swift
//  BoredFramework
//
//  Created by Erez Hod on 29/10/23.
//

import Foundation

// Enforce the minimum Swift version for all platforms and build systems.
// Note that you can use whichever version you like, or not implement this at all.
#if swift(<5.9)
    #error("BoredFramework doesn't support Swift versions below 5.9.")
#endif

/// Reference to `BoredFramework.default` for quick bootstrapping; Alamofire style!
public let Bored = BoredFramework.default

public class BoredFramework {
    /// Shared singleton instance.
    public static let `default` = BoredFramework()
    
    // Prevent  developers from creating their own instances by making the initializer `private`.
    private init() {}
}

// MARK: - Public developer APIs

public extension BoredFramework {
    /**
     Fetch an `Activity` from Bored API.
     
     This is our API method for external developers who are going to utilize our framework.
     */
    func fetchActivity() async -> Result<Activity, BoredFrameworkError> {
        guard let url = URL(string: "https://www.boredapi.com/api/activity") else {
            return .failure(.invalidURL)
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let activity = try JSONDecoder().decode(Activity.self, from: data)
            return .success(activity)
        } catch DecodingError.dataCorrupted(let error) {
            return .failure(.decodingError(error))
        } catch let error {
            return .failure(.requestError(error))
        }
    }
}

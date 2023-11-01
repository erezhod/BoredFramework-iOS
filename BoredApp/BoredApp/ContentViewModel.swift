//
//  ContentViewModel.swift
//  BoredApp
//
//  Created by Erez Hod on 29/10/23.
//

import Foundation
import BoredFramework // <-- importing the BoredFramework

final class ContentViewModel: ObservableObject {
    @Published var isLoading = false
    @Published var activityDescription = "Tap 👇 to generate an activity"

    func generateActivity() {
        isLoading = true
        
        Task { @MainActor [weak self] in
            guard let self else { return }
            
            let result = await Bored.fetchActivity() // <-- Implementing the BoredFramework in our app
            
            isLoading = false
            
            switch result {
            case .success(let activity):
                activityDescription = "You could \(activity.activity.lowercased())"
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}

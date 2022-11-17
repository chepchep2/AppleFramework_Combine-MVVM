//
//  FrameworkDetailViewModel.swift
//  AppleFramework
//
//  Created by 조상우 on 2022/11/10.
//

import Foundation
import Combine

final class FrameworkDetailViewModel {
    
    init(framework: AppleFramework) {
        self.framework = CurrentValueSubject(framework)
    }
    
    // Data => Output
    let framework: CurrentValueSubject<AppleFramework, Never>
    
    // User Action => Input
    let buttonTapped = PassthroughSubject<AppleFramework, Never>()
    func learnMoreTapped() {
        buttonTapped.send(framework.value)
    }
}

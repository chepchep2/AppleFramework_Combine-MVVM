//
//  FrameworkListViewModel.swift
//  AppleFramework
//
//  Created by 조상우 on 2022/11/10.
//

import Foundation
import Combine

final class FrameworkListViewModel {
    
    init(items: [AppleFramework], selectedItem: AppleFramework? = nil) {
        self.items = CurrentValueSubject(items)
        self.selectedItem = CurrentValueSubject(selectedItem)
    }
    
    // Data => Output
    let items: CurrentValueSubject<[AppleFramework], Never>
    let selectedItem: CurrentValueSubject<AppleFramework?, Never>
    
    // User Action => Input
    func didSelect(at indexPath: IndexPath) {
        let item = items.value[indexPath.item]
        selectedItem.send(item)
    }
}

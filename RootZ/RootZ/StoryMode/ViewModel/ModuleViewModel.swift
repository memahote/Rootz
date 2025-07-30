//
//  ModuleViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 28/07/2025.
//

import Foundation

@Observable
class ModuleViewModel {
    var module: Module
    var currentPageIndex: Int = 0

    var pages: [ModulePage] {
        module.modulesPages
    }

    var currentPage: ModulePage {
        pages[currentPageIndex]
    }

    var progress: Double {
        guard !pages.isEmpty else { return 0 }
        return Double(currentPageIndex + 1) / Double(pages.count)
    }

    var isLastPage: Bool {
        currentPageIndex >= pages.count - 1
    }

    init(module: Module) {
        self.module = module
    }

    func nextPage() {
        if !isLastPage {
            currentPageIndex += 1
        }
    }
    
    func markAsFinished() {
        if isLastPage {
            module.isFinish = true
        }
    }

    func reset() {
        currentPageIndex = 0
    }
}

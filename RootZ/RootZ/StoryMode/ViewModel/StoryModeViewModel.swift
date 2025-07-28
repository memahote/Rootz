//
//  StoryModeViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import Foundation

@Observable
class StoryModeViewModel {
    var chapters: [Chapters]
    var currentChapterIndex: Int = 0
    var currentModuleIndex: Int = 0

    var currentChapter: Chapters {
        chapters[currentChapterIndex]
    }

    var currentModule: Module {
        currentChapter.modules[currentModuleIndex]
    }

    init(chapters: [Chapters]) {
        self.chapters = chapters
    }

    func selectChapter(at index: Int) {
        guard chapters.indices.contains(index) else { return }
        currentChapterIndex = index
        currentModuleIndex = 0
    }

    func selectModule(at index: Int) {
        guard currentChapter.modules.indices.contains(index) else { return }
        currentModuleIndex = index
    }
}



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
    
    var chapterProgression: Double {
        progression(for: currentChapter)
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
    
    func progression(for chapter: Chapters) -> Double {
        let total = chapter.modules.count
        let completed = chapter.modules.filter { $0.isFinish }.count
        return total == 0 ? 0 : Double(completed) / Double(total)
    }
    
    func updateCurrentModule(_ updatedModule: Module) {
        guard chapters.indices.contains(currentChapterIndex),
              chapters[currentChapterIndex].modules.indices.contains(currentModuleIndex) else { return }

        var chapter = chapters[currentChapterIndex]
        chapter.modules[currentModuleIndex] = updatedModule
        chapters[currentChapterIndex] = chapter 
    }
    
}



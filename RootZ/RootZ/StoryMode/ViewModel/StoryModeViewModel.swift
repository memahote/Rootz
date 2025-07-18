//
//  StoryModeViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 17/07/2025.
//

import Foundation

@Observable
class StoryModeViewModel {
    var chapters : [Chapters]
    var currentChapterIndex : Int
    var currentModule : Int
    var currentChapter: Chapters {
        chapters[currentChapterIndex]
    }
    
    init(chapters: [Chapters], currentChapterIndex: Int, currentModule: Int) {
        self.chapters = chapters
        self.currentChapterIndex = currentChapterIndex
        self.currentModule = currentModule
    }
    
    
}

//
//  AppViewModel.swift
//  RootZ
//
//  Created by Mounir Emahoten on 19/07/2025.
//

import Foundation


@Observable
class AppViewModel {
    
    var selectedCulture : CulturesModel
    var storyModeViewModel: StoryModeViewModel
    
    init() {
        let defaultCulture = CultureData.defaultCulture
        self.selectedCulture = defaultCulture
        self.storyModeViewModel = StoryModeViewModel(chapters: defaultCulture.chapters, currentChapterIndex: 0, currentModule: 0)
    }
    
    func updateCulture(to culture: CulturesModel) {
        self.selectedCulture = culture
        self.storyModeViewModel = StoryModeViewModel(chapters: culture.chapters, currentChapterIndex: 0, currentModule: 0)
    }

}

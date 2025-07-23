//
//  StringExtensions.swift
//  RootZ
//
//  Created by Apprenant156 on 23/07/2025.
//
import Foundation

extension String {
    var normalized: String {
        self.folding(options: .diacriticInsensitive, locale: .current)
            .trimmingCharacters(in: .whitespacesAndNewlines)
            .lowercased()
    }
}



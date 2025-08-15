//
//  StringReverse.swift
//  HackerNews
//
//  Created by Tejasv Singh on 8/15/25.
//
struct StringReverse {
    func reverseString(_ input: String) -> String {
        var reversedString = ""
        for character in input.replacingOccurrences(of: " ", with: "").replacingOccurrences(of: "\n", with: "") {
            reversedString.insert(character, at: reversedString.startIndex)
        }
        return reversedString
    }
}

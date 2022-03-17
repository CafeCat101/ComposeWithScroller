//
//  Lesson.swift
//  ComposeWithScroller
//
//  Created by Leonore Yardimli on 2022/2/27.
//


import Foundation
struct Lesson: Codable{
	var subject:String
	var theme:String
	var optionshuffled: Bool
	var language:String
	var quiz:[Quiz]
}

struct Quiz: Codable{
	var asking:String
	var answer:[String]
	var options:[String]
	var picture:String
}


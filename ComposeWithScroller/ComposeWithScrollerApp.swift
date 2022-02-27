//
//  ComposeWithScrollerApp.swift
//  ComposeWithScroller
//
//  Created by Leonore Yardimli on 2022/2/26.
//

import SwiftUI

@main
struct ComposeWithScrollerApp: App {
	@StateObject var lessonToday = LessonToday()
	var body: some Scene {
		WindowGroup {
			WelcomeView().environmentObject(lessonToday)
		}
	}
}

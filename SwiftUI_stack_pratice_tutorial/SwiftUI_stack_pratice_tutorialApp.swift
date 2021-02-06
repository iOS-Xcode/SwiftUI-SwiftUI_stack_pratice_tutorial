//
//  SwiftUI_stack_pratice_tutorialApp.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-12.
//

import SwiftUI

@main
struct SwiftUI_stack_pratice_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
 //           ContentView()
            MyCustomTabView(tabIndex: .home)
        }
    }
}

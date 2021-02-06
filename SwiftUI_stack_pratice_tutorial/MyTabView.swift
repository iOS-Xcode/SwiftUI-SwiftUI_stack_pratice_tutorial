//
//  MyTabView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-16.
//

import SwiftUI

struct MyTabView : View {
    var body: some View {
        TabView {
            MyView(title: "Number 0", bgColor: .green)
                .tabItem {
                    Image(systemName: "airplane")
                    Text("item 1")
                }
                .tag(0)
            MyView(title: "Number 1", bgColor: .orange)
                .tabItem {
                    Image(systemName: "flame.fill")
                    Text("item 2")
                }
                .tag(0)
            MyView(title: "Number 2", bgColor: .pink)
                .tabItem {
                    Image(systemName: "doc.fill")
                    Text("item 3")
                }
                .tag(0)
        }
    }
}

struct MyTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyTabView()
    }
}

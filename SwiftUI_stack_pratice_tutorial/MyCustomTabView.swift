//
//  MYCustomeTabView.swift
//  SwiftUI_stack_pratice_tutorial
//
//  Created by Seokhyun Kim on 2020-10-16.
//

import SwiftUI

enum TabIndex {
    case home, cart, profile
}

struct MyCustomTabView : View {
    @State var tabIndex : TabIndex
    @State var largerScale : CGFloat = 1.3
    func changeMyView(tabIndex: TabIndex) -> MyView {
        switch tabIndex {
        case .home:
            return MyView(title: "Home", bgColor: .green)
        case .cart:
            return MyView(title: "Cart", bgColor: .pink)
        case .profile:
            return MyView(title: "Profile", bgColor: .blue)
        default:
            return MyView(title: "Home", bgColor: .blue)
        }
    }
    func changeIconColor(tabIndex: TabIndex) -> Color {
        switch tabIndex {
        case .home:
            return .green
        case .cart:
            return .orange
        case .profile:
            return . purple
        default:
            return .green
        }
    }
    //data type of geometryReader is GeometryProxy
    func calcCircleBgPosition(tabIndex : TabIndex, geometry : GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .home:
            return -(geometry.size.width / 3)
        case .cart:
            return 0
        case .profile:
            return geometry.size.width / 3
        default:
            return -(geometry.size.width / 3)
        }
    }
    var body: some View {
        //        Text("aaa")
        GeometryReader { geometry in
            ZStack(alignment: .bottom) {
                self.changeMyView(tabIndex: self.tabIndex)
                Circle()
                    .frame(width: 90, height: 90)
                    //In case of Iphone SE
                    .offset(x: self.calcCircleBgPosition(tabIndex : self.tabIndex, geometry: geometry), y: UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 0)
                    .foregroundColor(Color.white)
                //Vstack has default spacing and make custom tab size bigger.
                VStack(spacing : 0) {
                    HStack(spacing : 0) {
                        Button(action:{
                            print("pressed")
                            //값을 변경하는 부분에서 애니메이션을 넣는디.
                            withAnimation {
                                self.tabIndex = .home
                            }
                        }) {
                            Image(systemName: "house.fill")
                                .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .home ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .home ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                // - 는 위로.
                                .offset(y: self.tabIndex == .home ? -10 : 0)
                        }.background(Color.white)
                        Button(action:{
                            print("pressed")
                            withAnimation {
                                self.tabIndex = .cart

                            }
                        }) {
                            Image(systemName: "cart.fill")   .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .cart ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .cart ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                                .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .cart ? -10 : 0)
                        }.background(Color.white)
                        Button(action:{
                            print("pressed")
                            withAnimation {
                                self.tabIndex = .profile
                            }
                        }) {
                            Image(systemName: "person.circle.fill")        .font(.system(size: 25))
                                .scaleEffect(self.tabIndex == .profile ? self.largerScale : 1.0)
                                .foregroundColor(self.tabIndex == .profile ? self.changeIconColor(tabIndex: self.tabIndex) : Color.gray)
                            .frame(width: geometry.size.width / 3, height: 50)
                                .offset(y: self.tabIndex == .profile ? -10 : 0)
                        }.background(Color.white)
                    } //HStack
                    Rectangle()
                        .foregroundColor(.white)
                        //Iphone SE does not have safeArea in botton
                        .frame(height : UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 20)

                }
            }
        }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MyCustomTabView_Previews: PreviewProvider {
    static var previews: some View {
        MyCustomTabView(tabIndex: .home)
    }
}

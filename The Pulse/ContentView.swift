import SwiftUI
import Foundation


struct ContentView: View {
    let popularItems = PopularItems().items
    @State private var selectedIndex = 0
    @State private var isProfileViewActive = false
    @State private var showSecondaryIcons = false
    @State private var currentIcon = "trending"
    @State private var originalIcon = "trending"
    @State private var icons = ["trending", "shirt", "pant", "accessories", "shoe"]
    
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minHeight: 0, maxHeight: .infinity)
                
                VStack(alignment: .center) {
                    VStack {
                        Button(action: {
                            withAnimation {
                                if self.showSecondaryIcons {
                                    self.showSecondaryIcons = false
                                } else {
                                    if self.selectedIndex != -1 {
                                        self.originalIcon = self.currentIcon
                                        self.showSecondaryIcons = true
                                    } else {
                                        self.currentIcon = self.originalIcon
                                        self.selectedIndex = 0
                                        self.showSecondaryIcons = false
                                    }
                                }
                            }
                        }) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 20)
                                    .frame(width: 75, height: 75)
                                    .foregroundColor(.white)
                                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 4))
                                    .opacity(0.8)
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                                    .padding(.bottom, 10)
                                Image(currentIcon)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .padding(.bottom, 10)
                                    .foregroundColor(.white)
                            }
                            
                        }
                        
                        if showSecondaryIcons {
                            HStack(spacing: 25) {
                                Button(action: {
                                    self.selectedIndex = 0
                                    self.currentIcon = "trending"
                                    self.showSecondaryIcons = false
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .opacity(self.selectedIndex == 0 ? 0.8 : 0)
                                            .frame(width: 35, height: 35)
                                            .shadow(color: .white, radius: 5)
                                        Image("trending")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                    }
                                }
                                
                                Button(action: {
                                    self.selectedIndex = 1
                                    self.currentIcon = "shirt"
                                    self.showSecondaryIcons = false
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .opacity(self.selectedIndex == 1 ? 0.8 : 0)
                                            .frame(width: 35, height: 35)
                                            .shadow(color: .white, radius: 5)
                                        Image("shirt")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                    }
                                }
                                Button(action: {
                                    self.selectedIndex = 2
                                    self.currentIcon = "pant"
                                    self.showSecondaryIcons = false
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .opacity(self.selectedIndex == 2 ? 0.8 : 0)
                                            .frame(width: 35, height: 35)
                                            .shadow(color: .white, radius: 5)
                                        Image("pant")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                    }
                                }
                                Button(action: {
                                    self.selectedIndex = 3
                                    self.currentIcon = "accessories"
                                    self.showSecondaryIcons = false
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .opacity(self.selectedIndex == 3 ? 0.8 : 0)
                                            .frame(width: 40, height: 40)
                                            .shadow(color: .white, radius: 5)
                                        Image("accessories")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                    }
                                }
                                Button(action: {
                                    self.selectedIndex = 4
                                    self.currentIcon = "shoe"
                                    self.showSecondaryIcons = false
                                }) {
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.orange)
                                            .opacity(self.selectedIndex == 4 ? 0.8 : 0)
                                            .frame(width: 40, height: 40)
                                            .shadow(color: .white, radius: 5)
                                        Image("shoe")
                                            .resizable()
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(.white)
                                    }
                                }
                            }
                            .padding(.leading, 5)
                            .transition(.slide)
                        }
                        HStack {
                            ScrollView(.vertical) {
                                VStack {
                                    if self.selectedIndex == 0 {
                                        ForEach(popularItems.filter { $0.categories.contains("top10trendingitems")}) { item in
                                            ProductCardView(item: item)
                                        }
                                    } else if self.selectedIndex == 1 {
                                        ForEach(popularItems.filter { $0.categories.contains("trendingtops")}) { item in
                                            ProductCardView(item: item)
                                        }
                                    } else if self.selectedIndex == 2 {
                                        ForEach(popularItems.filter { $0.categories.contains("trendingbottoms")}) { item in
                                            ProductCardView(item: item)
                                        }
                                    } else if self.selectedIndex == 3 {
                                        ForEach(popularItems.filter { $0.categories.contains("trendingaccessories")}) { item in
                                            ProductCardView(item: item)
                                        }
                                    } else if self.selectedIndex == 4 {
                                        ForEach(popularItems.filter { $0.categories.contains("trendingshoes")}) { item in
                                            ProductCardView(item: item)
                                        }
                                    }
                                }
                            }
                            .transition(.slide)
                            .edgesIgnoringSafeArea(.all)
                            .padding()
                            
                            
                            .navigationBarItems(leading:
                                                    NavigationLink(destination: SearchView(popularitems:popularItems)) {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.black)
                                    .opacity(0.5)
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                                    .overlay(
                                        Image(systemName: "magnifyingglass")
                                            .resizable()
                                            .foregroundColor(.white)
                                            .padding(10)
                                    )
                            },
                                                trailing:
                                                    NavigationLink(destination: ProfileView()) {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 35, height: 35)
                                    .foregroundColor(.black)
                                    .opacity(0.8)
                                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                                    .overlay(
                                        Image(systemName: "person.fill")
                                            .resizable()
                                            .foregroundColor(.white)
                                            .padding(10)
                                    )
                            }
                            )
                        }
                    }
                }
            }
        }
    }
    
    struct SearchView: View {
        @State private var searchTerm: String = ""
        let popularitems: [PopularItem]
        
        var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                    .frame(minHeight: 0, maxHeight: .infinity)
                VStack {
                    HStack {
                        TextField("Search by name, description, or brand", text: $searchTerm)
                            .padding(.leading, 10)
                            .frame(width: 325, height: 40)
                            .background(Color.white)
                            .cornerRadius(5.0)
                        
                        Button(action: {
                            // perform search based on searchTerm
                        }) {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .frame(width: 20, height: 20)
                                .foregroundColor(.black)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.bottom, 20)
                    
                    // Display search results here
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(alignment: .center, spacing: 20) {
                            ForEach(popularitems.filter { item in
                                self.searchTerm.isEmpty ? true :
                                item.name.lowercased().contains(self.searchTerm.lowercased()) || item.description.lowercased().contains(self.searchTerm.lowercased()) || item.image.lowercased().contains(self.searchTerm.lowercased()) ||
                                item.prices.contains(self.searchTerm)
                            }, id: \.id) { item in
                                ProductCardView(item: item)
                            }
                        }
                    }
                }
            }
        }
    }

    struct ProfileView: View {
        let popularItems = PopularItems().items
            
        var body: some View {
            NavigationView {
                ZStack {
                        Color.white
                                .edgesIgnoringSafeArea(.all)

                            VStack{
                                ScrollView(.horizontal) {
                                    HStack(spacing: 20) {
                                        ForEach(popularItems.filter { $0.categories.contains("trendingaccessories")}) { item in
                                            Image(item.image)
                                                .resizable()
                                                .padding(.top, 10)
                                                .frame(width: 145, height: 125)
                                        }
                                    }
                                }
                                
                        Circle()
                            .frame(width: 85, height: 85)
                            .foregroundColor(.white)
                            .overlay(Circle().stroke(Color.white, lineWidth: 4))
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .overlay(
                                Image(systemName: "person.fill.badge.plus")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .padding(10)
                            )

                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(popularItems.filter { $0.categories.contains("trendingtops")}) { item in
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .padding(.top, -15)
                                        .frame(width: 195, height: 225)
                                }
                            }
                        }
                                    
                        ScrollView(.horizontal) {
                            HStack(spacing: 10) {
                                ForEach(popularItems.filter { $0.categories.contains("trendingbottoms")}) { item in
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .padding(.top, -35)
                                        .frame(width: 185, height: 235)
                                }
                            }
                        }
                                    

                        ScrollView(.horizontal) {
                            HStack(spacing: 20) {
                                ForEach(popularItems.filter { $0.categories.contains("trendingshoes")}) { item in
                                    Image(item.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .padding(.top, -40)
                                        .frame(width: 175, height: 135)
                                }
                            }
                            .padding(.bottom, 30)
                        }
                      }
                            .mask(
                                HStack(spacing: 0) {

                                    // Left gradient
                                    LinearGradient(gradient:
                                       Gradient(
                                           colors: [Color.white.opacity(0), Color.white]),
                                           startPoint: .leading, endPoint: .trailing
                                       )
                                       .frame(width: 150)

                                    // Middle
                                    Rectangle().fill(Color.white)

                                    // Right gradient
                                    LinearGradient(gradient:
                                       Gradient(
                                           colors: [Color.white, Color.white.opacity(0)]),
                                           startPoint: .leading, endPoint: .trailing
                                       )
                                       .frame(width: 150)
                         }
                      )
                   }
                }
            }
         }
     }
 
    struct ProductCardView: View {
        let item: PopularItem
        @State private var isLiked: Bool = false
        
        var body: some View {
            NavigationLink(destination: ProductDetailView(item: item)) {
                ZStack {
                    VStack(alignment: .center, spacing: -30) {
                        Image(item.image)
                            .resizable()
                            .padding()
                            .padding(.top, 15)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 180, height: 180)
                            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.white.opacity(0.65)]), startPoint: .top, endPoint: .bottom))
                            .clipShape(RoundedRectangle(cornerRadius: 35))
                            .overlay(RoundedRectangle(cornerRadius: 35).stroke(Color.white, lineWidth: 1))
                        Image(item.description)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 50, height: 50)
                            .offset(x: -55, y: -150)
                        Button(action: {
                            self.isLiked.toggle()
                        }) {
                            if self.isLiked {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 27, height: 27)
                                    .foregroundColor(.red)
                            } else {
                                Image(systemName: "heart.fill")
                                    .resizable()
                                    .frame(width: 25, height: 25)
                                    .foregroundColor(.gray)
                            }
                        }
                        .offset(x: 60, y: -155)
                    }
                }
            }
        }
    }
    

    
    
    struct ProductDetailView: View {
        let item: PopularItem
        
        var body: some View {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.purple, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    Image(item.description)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100, height: 100)
                        .frame(alignment: .topLeading)
                        .shadow(radius: 10)
                        .padding(.all, 20)
                    
                    Image(item.image)
                        .resizable()
                        .frame(width: 350, height: 350)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                        .padding(.bottom, 30)
                    
                    Text(item.name)
                        .foregroundColor(.black)
                        .font(.system(size: 30, weight: .semibold, design: .rounded))
                        .padding(.bottom, 10)
                    
                    Spacer()
                }
                .padding()
            }
        }
    }
    
    
    
    
    struct Price: Identifiable {
        let id = UUID()
        let store: String
        let price: String
    }
    
    

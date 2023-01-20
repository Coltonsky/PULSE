import SwiftUI

struct ContentView: View {
let popularItems: [PopularItem] = [ PopularItem(id: UUID(), name: "Bread", image: "bread", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Milk", image: "milk", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Eggs", image: "eggs", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Apples", image: "apples", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Bananas", image: "bananas", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Cereal", image: "cereal", prices: [], categories: ["food"]),
PopularItem(id: UUID(), name: "Toilet paper", image: "toiletpaper", prices: [], categories: ["household"]),
PopularItem(id: UUID(), name: "Hand sanitizer", image: "handsanitizer", prices: [], categories: ["household"]),
                                    PopularItem(id: UUID(), name: "Frozen Pizza", image: "pizza", prices: [], categories: ["food"]),
                                    PopularItem(id: UUID(), name: "Laundry detergent", image: "laundrydetergent", prices: [], categories: ["household"]),
                                    PopularItem(id: UUID(), name: "Paper towels", image: "papertowels", prices: [], categories: ["household"]),
                                    PopularItem(id: UUID(), name: "Pasta", image: "pasta", prices: [], categories: ["food"]),
                                    PopularItem(id: UUID(), name: "Peanut butter", image: "peanutbutter", prices: [], categories: ["food"]),
                                    PopularItem(id: UUID(), name: "Coca-Cola", image: "soda", prices: [], categories: ["food"]),
                                    PopularItem(id: UUID(), name: "Case of Water", image: "water", prices: [], categories: ["food"]),

]
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    HStack {
                    Image(systemName: "figure.mind.and.body")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.trailing, 10)
                        Text("Recent Finds")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "figure.mind.and.body")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .padding(.leading, 10)
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                    
                    HStack {
                        VStack {
               Image(systemName: "tshirt")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding()
                                .padding(.top, 10)
                                .foregroundColor(.black)
                            ScrollView(.vertical) {
                                ForEach(popularItems.filter { $0.categories.contains("food") }) { item in
                                    NavigationLink(destination: ProductDetailView(item: item)) {
                                        ProductCardView(item: item)
                                    }
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                        VStack {
                        Image(systemName: "house.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding()
                                .foregroundColor(.black)
                                .padding(.top, 10)
 
                            ScrollView(.vertical) {
                                ForEach(popularItems.filter { $0.categories.contains("household") }) { item in
                                    NavigationLink(destination: ProductDetailView(item: item)) {
                                        ProductCardView(item: item)
                                    }
                                    Spacer()
                                }
                            }
                            .padding()
                        }
                    }
                            }
                          }
        }
    }
}

struct ProductCardView: View {
    let item: PopularItem
    
    var body: some View {
        VStack(alignment: .center) {
                    Image(item.image)
                        .resizable()
                        .frame(width: 120, height: 120)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 20)
                }
                .padding(20)
                .frame(maxWidth: 130)
                .background(LinearGradient(gradient: Gradient(colors: [Color(red:0.15, green:0.15, blue:0.15), Color(red:0.10, green:0.10, blue:0.10)]), startPoint: .top, endPoint: .bottom))
                .clipShape(RoundedRectangle(cornerRadius: 20))

    }
}


struct ProductDetailView: View {
    let item: PopularItem
    
    var body: some View {
        VStack {
            Image(item.image)
                .resizable()
                .frame(width: 300, height: 300)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .shadow(radius: 10)
            Text(item.name)
                .foregroundColor(.white)
                .font(.largeTitle)
            List {
                ForEach(item.prices) { price in
                    HStack {
                        Text(price.store)
                            .foregroundColor(.white)
                            .font(.headline)
                        Spacer()
                        Text("$\(String(format: "%.2f", price.price))")
                            .foregroundColor(.white)
                            .font(.headline)
                    }
                }
            }
        }
        .padding()
        .background(Color.red)
    }
}

struct Price: Identifiable {
    let id = UUID()
    let store: String
    let price: Double
}


struct PopularItem: Identifiable {
    var id: UUID
    var name: String
    var image: String
    var prices: [Price]
    var categories: [String]
}


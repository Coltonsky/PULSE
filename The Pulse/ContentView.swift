import SwiftUI

struct ContentView: View {
    let popularItems = PopularItems().items

    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom)
                    .edgesIgnoringSafeArea(.all)
                VStack(alignment: .center) {
                    HStack {
                        Text("trending")
                            .foregroundColor(.white)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                    
                    HStack(spacing: -5) {
                        VStack {
                            Image(systemName: "figure.wave.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding()
                                .padding(.top, 10)
                                .foregroundColor(.black)
                            ScrollView(.vertical) {
                                VStack {
                                    ForEach(popularItems.filter { $0.categories.contains("clothing") }) { item in
                                        ProductCardView(item: item)
                                    }
                                }
                            }
                            .padding()
                        }
                        VStack {
                            Image(systemName: "bag.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding()
                                .foregroundColor(.black)
                                .padding(.top, 10)
                            ScrollView(.vertical) {
                                VStack {
                                    ForEach(popularItems.filter { $0.categories.contains("accessories") }) { item in
                                        ProductCardView(item: item)
                                    }
                                }
                            }
                            .padding()
                        }
                        VStack {
                            Image(systemName: "10.circle.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .padding()
                                .foregroundColor(.black)
                                .padding(.top, 10)
                            ScrollView(.vertical) {
                                VStack {
                                    ForEach(popularItems.filter { $0.categories.contains("trending") }) { item in
                                        ProductCardView(item: item)
                                    }
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
        NavigationLink(destination: ProductDetailView(item: item)) {
            VStack(alignment: .center) {
                Image(item.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 20)
            }
            .padding(15)
            .frame(maxWidth: 100, maxHeight: 100)
            .background(LinearGradient(gradient: Gradient(colors: [Color(red:0.15, green:0.15, blue:0.15), Color(red:0.10, green:0.10, blue:0.10)]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }

    }
}


struct ProductDetailView: View {
    let item: PopularItem

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red:0.15, green:0.15, blue:0.15), Color(red:0.10, green:0.10, blue:0.10)]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(item.image)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 10)
                Text(item.name)
                    .foregroundColor(.white)
                    .font(.system(size: 32, weight: .semibold, design: .rounded))
                    .padding(.bottom, 10)
                Text(item.description)
                    .foregroundColor(.white)
                    .font(.system(size: 20, design: .rounded))
                    .padding(.all, 20)
                    .background(LinearGradient(gradient: Gradient(colors: [.orange, .red]), startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .shadow(radius: 20)
            }
            .padding()
        }
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
    var description: String
}

struct PopularItems {
    let items: [PopularItem] = [
        PopularItem(id: UUID(), name: "preppy tennis miniskirts", image: "miniskirts", prices: [], categories: ["clothing"], description: "Preppy tennis miniskirts are a popular fashion trend that combines the sporty look of tennis skirts with a preppy, collegiate style. They are often made from lightweight, breathable fabrics and feature pleats, stripes, or other preppy details."),
        PopularItem(id: UUID(), name: "collegiate-inspired cardigan", image: "cardigan", prices: [], categories: ["clothing"], description: "Collegiate-inspired cardigans are a popular fashion trend that takes inspiration from the classic, preppy style of Ivy League universities. They often feature traditional details such as button-front closures, elbow patches, and cable-knit patterns."),
        PopularItem(id: UUID(), name: "transparent jacket", image: "transparent", prices: [], categories: ["clothing"], description: "Transparent clothing is a fashion trend that features see-through fabrics and designs, often made from materials such as sheer chiffon or mesh. It can include clothing items such as dresses, skirts, or tops with transparent panels or details."),
        PopularItem(id: UUID(), name: "cargo pockets", image: "cargopockets", prices: [], categories: ["clothing"], description: "Cargo pockets are a fashion trend that features clothing items, usually pants or shorts, that have large, functional pockets on the sides or legs. These pockets can be used to store items like wallets, keys, or phones and are often a popular choice for outdoor or active wear."),
        PopularItem(id: UUID(), name: "Low Rise Chrome Heart Jeans", image: "ytwok", prices: [], categories: ["clothing"], description: "These are a type of denim jeans that feature a low-rise waist and embroidered Chrome Heart branding on the back pockets. This piece is very Y2K-inspired and has continued to make a comeback and will most likely remain a strong fashion statement."),
        PopularItem(id: UUID(), name: "Blazers", image: "blazers", prices: [], categories: ["clothing"], description: "Blazers are a type of jacket that are designed to be worn as part of a formal or professional attire. They are a popular choice for those looking to return to the classics of the modern wardrobe, and are often paired with straight leg jeans, button down shirts, and interesting loafers or leather sneakers."),
        PopularItem(id: UUID(), name: "Trench Coats", image: "trenchcoats", prices: [], categories: ["clothing"], description: "Trench coats are a type of coat that are designed to be worn in inclement weather. They are a popular choice for those looking to return to the classics of the modern wardrobe, and are often paired with straight leg jeans and blazers."),
       
        
        
        PopularItem(id: UUID(), name: "chunky jewelry", image: "chunky", prices: [], categories: ["accessories"], description: "Chunky jewelry is a trend that features bold, statement-making pieces that are often large and attention-grabbing. They can be made from a variety of materials such as wood, plastic, or metal, and often feature colorful beads or large, chunky stones."),
        PopularItem(id: UUID(), name: "Velvet Scrunchies", image: "scrunchies", prices: [], categories: ["accessories"], description: "These are a type of hair accessory that are made of velvet fabric and are designed to be worn around the wrist or in the hair. They are a popular choice among fashion-forward individuals and are often paired with oversized t-shirts or crop tops."),
        PopularItem(id: UUID(), name: "Fleece Bucket Hat", image: "buckethat", prices: [], categories: ["accessories"], description: "These are a type of hat that are made of fleece fabric, and are designed to be worn for outdoor activities or casual events. They are a popular choice among fashion-forward individuals and are often paired with oversized t-shirts or crop tops."),
        PopularItem(id: UUID(), name: "Vintage Brass Clutch", image: "brass_clutch", prices: [], categories: ["accessories"], description: "A fashionable trend that features vintage-inspired brass clutches with metal chain straps, perfect for adding a touch of nostalgia to any outfit."),
        PopularItem(id: UUID(), name: "lug-sole loafers", image: "loafers", prices: [], categories: ["accessories"], description: "These are a type of shoe that features a thick sole with deep treads, ideal for outdoor or rugged terrain. They often have a casual, rugged look and are available in a variety of materials such as leather or suede."),
        
        
        
        PopularItem(id: UUID(), name: "oversized blazers", image: "blazers", prices: [], categories: ["clothing", "trending"], description: "Oversized blazers are a popular trend that features larger than normal blazers with a casual, relaxed look."),
            PopularItem(id: UUID(), name: "corset-inspired tops", image: "corsets", prices: [], categories: ["clothing", "trending"], description: "Corset-inspired tops are a popular trend that features tops with corset-like detailing and a tight-to-the-body fit."),
            PopularItem(id: UUID(), name: "sheer dresses", image: "sheer", prices: [], categories: ["clothing", "trending"], description: "Sheer dresses are a popular trend that features dresses made from sheer, semi-transparent fabrics."),
            PopularItem(id: UUID(), name: "cutout tops", image: "cutouts", prices: [], categories: ["clothing", "trending"], description: "Cutout tops are a popular trend that features tops with cutout designs and dramatic waistlines."),
    ]

}

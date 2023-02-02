//
//  PopularItems.swift
//  The Pulse
//
//  Created by James Wright on 2/1/23.
//

import Foundation
import SwiftUI

struct PopularItem: Identifiable, Hashable {
    var id: UUID
    var name: String
    var image: String
    var prices: [String]
    var categories: [String]
    var description: String
}

struct PopularItems {
    let items: [PopularItem] = [
        PopularItem(id: UUID(), name: "Tasman Slipper", image: "clog", prices: ["$100"], categories: ["top10trendingitems", "trendingshoes"], description: "UGG's"),
        PopularItem(id: UUID(), name: "Saikuru Puffer Jacket", image: "puffa", prices: ["$250"], categories: ["top10trendingitems", "trendingtops"], description: "The North Face"),
        PopularItem(id: UUID(), name: "Fleece Jacket", image: "patafleece", prices: ["$139"], categories: ["top10trendingitems", "trendingtops"], description: "Patagonia"),
        PopularItem(id: UUID(), name: "Offline 2.0 Men's Mules", image: "nikeshoe", prices: ["$130"], categories: ["top10trendingitems", "trendingshoes"], description: "Nike"),
        PopularItem(id: UUID(), name: "The Oversized Blazer", image: "everlane", prices: ["$185"], categories: ["top10trendingitems", "trendingtops"], description: "Everlane2"),
        PopularItem(id: UUID(), name: "Brigitte Large Satchel", image: "brigitte", prices: ["$128"], categories: ["top10trendingitems", "trendingaccessories"], description: "Melie Bianco"),
        PopularItem(id: UUID(), name: "Originals Ultra Waterproof Boot", image: "timb", prices: ["$120"], categories: ["top10trendingitems", "trendingshoes"], description: "Timberland"),
        PopularItem(id: UUID(), name: "Puffer Vest", image: "pata", prices: ["$229"], categories: ["top10trendingitems", "trendingtops"], description: "Patagonia"),
        PopularItem(id: UUID(), name: "501 Jeans", image: "jeanz", prices: ["$98"], categories: ["top10trendingitems", "trendingbottoms"], description: "Levi's"),
        PopularItem(id: UUID(), name: "Dunk Low 'Reverse Brazil'", image: "nikedunk", prices: ["$140"], categories: ["top10trendingitems", "trendingshoes"], description: "Nike"),
            
        
            
            PopularItem(id: UUID(), name: "Striped Knit Sweater", image: "image1", prices: ["$50"], categories: ["trendingtops"], description: "Zara"),
            PopularItem(id: UUID(), name: "Wayne Coat", image: "wayne", prices: ["$348"], categories: ["trendingtops"], description: "Reformation"),
            PopularItem(id: UUID(), name: "Cashmere Boyfriend Sweater", image: "image2", prices: ["$148"], categories: ["trendingtops"], description: "Reformation"),
            PopularItem(id: UUID(), name: "Oversized Blouse", image: "image3", prices: ["$28"], categories: ["trendingtops"], description: "H&M"),
            PopularItem(id: UUID(), name: "Relaxed Rollneck Sweater", image: "image4", prices: ["$60"], categories: ["trendingtops"], description: "J. Crew"),
            PopularItem(id: UUID(), name: "Rib-Knit Sweater", image: "image6", prices: ["$60"], categories: ["trendingtops"], description: "H&M"),
            PopularItem(id: UUID(), name: "Oversized Coat", image: "image7", prices: ["$119"], categories: ["trendingtops"], description: "Zara"),
            PopularItem(id: UUID(), name: "We the Free Dolman Sleeve Quilted Jacket", image: "image8", prices: ["$139"], categories: ["trendingtops"], description: "Free People"),
            PopularItem(id: UUID(), name: "Sweater-Blazer", image: "image9", prices: ["$80"], categories: ["trendingtops"], description: "Eloise"),
            PopularItem(id: UUID(), name: "Rib-Knit Dress", image: "image10", prices: ["$28"], categories: ["trendingtops"], description: "H&M"),
            PopularItem(id: UUID(), name: "Double-Breasted Jacket", image: "image11", prices: ["$32"], categories: ["trendingtops"], description: "H&M"),
            PopularItem(id: UUID(), name: "Faux Leather Jacket", image: "image12", prices: ["$90"], categories: ["trendingtops"], description: "Zara"),
            PopularItem(id: UUID(), name: "The ReNew Fleece Pullover", image: "fleece", prices: ["$55"], categories: ["trendingtops"], description: "Everlane"),
            PopularItem(id: UUID(), name: "Fleece-Lined Leggings", image: "leggings", prices: ["$25"], categories: ["trendingbottoms"], description: "H&M"),
            PopularItem(id: UUID(), name: "Design Oversized Jumper with Balloon Sleeve", image: "jumper", prices: ["$40"], categories: ["trendingtops"], description: "ASOS"),
            PopularItem(id: UUID(), name: "Faux Shearling Jacket", image: "jacket", prices: ["$70"], categories: ["trendingtops"], description: "Zara"),
            PopularItem(id: UUID(), name: "The Perfect Vintage Jeans", image: "jeans", prices: ["$128"], categories: ["trendingbottoms"], description: "Madewell"),
            PopularItem(id: UUID(), name: "Plush Robe", image: "robe", prices: ["$49"], categories: ["trendingtops"], description: "Nordstrom"),
        
        
        
            PopularItem(id: UUID(), name: "Vintage Straight High Jeans", image: "image13", prices: ["$30"], categories: ["trendingbottoms"], description: "H&M"),
            PopularItem(id: UUID(), name: "Wide-Fit Pleated Pants", image: "image14", prices: ["$50"], categories: ["trendingbottoms"], description: "UNIQLO"),
            PopularItem(id: UUID(), name: "501 Jeans", image: "image15", prices: ["$98"], categories: ["trendingbottoms"], description: "Levi's"),
            PopularItem(id: UUID(), name: "Gwyneth Slip Skirt", image: "image16", prices: ["$90"], categories: ["trendingbottoms"], description: "J. Crew"),
            PopularItem(id: UUID(), name: "Alice Denim Maxi Skirt", image: "maxi", prices: ["$148"], categories: ["trendingbottoms"], description: "PISTOLA"),

            
        
            

            
            
            
            PopularItem(id: UUID(), name: "Sassy White Patent Boots", image: "sassyWhite", prices: ["$300"], categories: ["trendingshoes"], description: "Naked Wolfe"),
            PopularItem(id: UUID(), name: "From Another World Platform Boots", image: "fromAnotherWorld", prices: ["$130"], categories: ["trendingshoes"], description: "Poster Girl"),
            PopularItem(id: UUID(), name: "RHW Toe Ring Mule", image: "toeRingMule", prices: ["$444"], categories: ["trendingshoes"], description: "Gia Borghini"),
            PopularItem(id: UUID(), name: "PHARRELL WILLIAMS SAMBA HUMANRACE", image: "samba", prices: ["$138"], categories: ["trendingshoes"], description: "Adidas"),
            PopularItem(id: UUID(), name: "The Mexico 66s", image: "mexico66", prices: ["$100"], categories: ["trendingshoes"], description: "Onitsuka Tiger"),
            PopularItem(id: UUID(), name: "Shox TL", image: "shox", prices: ["$300"], categories: ["trendingshoes"], description: "Nike"),
            PopularItem(id: UUID(), name: "Runner Trainers", image: "runnerTrainers", prices: ["$1,150"], categories: ["trendingshoes"], description: "Balenciaga"),
            PopularItem(id: UUID(), name: "ACG Air Mada", image: "airMada", prices: ["$130"], categories: ["trendingshoes"], description: "Nike"),
            
            
            
            PopularItem(id: UUID(), name: "Borg Bucket Hat", image: "borg", prices: ["$79"], categories: ["trendingaccessories"], description: "Whistle's"),
            PopularItem(id: UUID(), name: "Landscape Leather Tote ", image: "oversizedTote", prices: ["$259"], categories: ["trendingaccessories"], description: "Arket"),
            PopularItem(id: UUID(), name: "Oversize Leather Bag", image: "cosOversize", prices: ["$300"], categories: ["trendingaccessories"], description: "Cos"),
            PopularItem(id: UUID(), name: "Extra Large Embellished Quilted Leather Tote", image: "saintLaurentIcare", prices: ["$,3620"], categories: ["trendingaccessories"], description: "Saint Laurent"),
            PopularItem(id: UUID(), name: "Gold-Plated Crystal Ring", image: "timeless", prices: ["$305"], categories: ["trendingaccessories"], description: "Timeless Pearly"),
            PopularItem(id: UUID(), name: "Crocheted Bucket Hat", image: "fendi", prices: ["$450"], categories: ["trendingaccessories"], description: "Fendi2"),
            PopularItem(id: UUID(), name: "Bon Gold-Tone Pearl Necklace", image: "pearl", prices: ["$180"], categories: ["trendingaccessories"], description: "Eliou"),


        ]

        
        
        

    

}


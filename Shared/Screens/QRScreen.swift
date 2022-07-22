//
//  QRScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI
import CoreImage.CIFilterBuiltins


struct QRScreen: View {
    
    @Binding public var username: String
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    let now = Date.now

    var body: some View {
        ZStack{
            Color(UIColor.systemGray6)
                .ignoresSafeArea()
            VStack{
            // display the image
                Image(uiImage: generateQRCode(from: username + getDate()))
                .interpolation(.none)
                .resizable()
                .scaledToFit()
                .padding()
            Text("Scan code to sign in")
                    .font(.title)
                    .bold()
                    .padding()
                
                Spacer()
            }
        }
    }
    
    func generateQRCode(from string: String) -> UIImage {
        filter.message = Data(string.utf8)

        if let outputImage = filter.outputImage {
            if let cgimg = context.createCGImage(outputImage, from: outputImage.extent) {
                return UIImage(cgImage: cgimg)
            }
        }

        return UIImage(systemName: "xmark.circle") ?? UIImage()
    }
    
    func getDate()->String{
     let time = Date()
     let timeFormatter = DateFormatter()
     timeFormatter.dateFormat = "dd.mm.yyyy"
     let stringDate = timeFormatter.string(from: time)
     return stringDate
    }
}

struct QRScreen_Previews: PreviewProvider {
    static var previews: some View {
        QRScreen(username: .constant("oopsie"))
    }
}

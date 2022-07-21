//
//  QRScreen.swift
//  checkpoint
//
//  Created by Alec Agayan on 7/20/22.
//

import SwiftUI
import CoreImage.CIFilterBuiltins


struct QRScreen: View {
    
    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()
    var body: some View {
        VStack{
        // display the image
            Image(uiImage: generateQRCode(from: "abcdefghijklmnopqrstuvwxyz"))
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            //.frame(width: 400, height: 400)
            
        Text("Scan code to sign in")
                .font(.title)
                .bold()
                .padding()
            
            Spacer()

        
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
}

struct QRScreen_Previews: PreviewProvider {
    static var previews: some View {
        QRScreen()
    }
}

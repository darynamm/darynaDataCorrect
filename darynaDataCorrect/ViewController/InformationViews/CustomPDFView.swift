//
//  CustomPDFView.swift
//  darynaDataCorrect
//
//  Created by Manuilenko, Daryna on 10/17/22.
//

import SwiftUI
import PDFKit
struct CustomPDFView: View {
    let title : String
    let displayedPDFURL: URL
    
    var body: some View {
        VStack{
            Text(title)
                .accessibilityLabel("Title of PDF")
                .accessibilityValue(title)
            PDFKitRepresentedView(documentURL: displayedPDFURL)
                .accessibilityLabel("PDF from: \(displayedPDFURL)")
                .accessibilityValue("PDF of: \(displayedPDFURL)")
            
        }
    }
}
struct PDFKitRepresentedView : UIViewRepresentable
{
    
    let documentURL : URL
    init (documentURL : URL)
    {
        self.documentURL = documentURL
    }
    func makeUIView(context: Context) -> some UIView
    {
        let pdfView : PDFView = PDFView()
        pdfView.document = PDFDocument(url: self.documentURL)
        pdfView.autoScales = true
        pdfView.displayDirection = .vertical
        pdfView.minScaleFactor = pdfView.scaleFactorForSizeToFit
        pdfView.maxScaleFactor = 15.0
        pdfView.minScaleFactor = 0.25
        return pdfView
    }
    
    func updateUIView(_ uiView : UIViewType, context : Context) -> Void
    {
        //do not put any code in here
    }
}
struct CustomPDFView_Previews: PreviewProvider {
    static var previews: some View
    {
        CustomPDFView(title: "PDF title", displayedPDFURL: randomInfoURL)
    }
}

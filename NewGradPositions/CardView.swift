//
//  CardView.swift
//  NewGradPositions
//
//  Created by Max Peng on 8/12/23.
//

import SwiftUI

struct CardView: View {
    let job: JobInfo
    var body: some View {
        VStack(alignment: .leading) {
            Text(job.company)
                .font(.headline)
            Spacer()
            HStack {
                Image(systemName: "briefcase")
                    .foregroundColor(.blue)
                Text(job.role)
                Spacer()
                Image(systemName: "heart")
                    .foregroundColor(.red)
                    .labelStyle(.trailingIcon)
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(job.theme.accentColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var job = JobInfo.sampleData[0]
    static var previews: some View {
        CardView(job: job)
            .background(job.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}

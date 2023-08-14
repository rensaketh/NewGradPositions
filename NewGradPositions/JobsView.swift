//
//  JobsView.swift
//  NewGradPositions
//
//  Created by Max Peng on 8/12/23.
//

import SwiftUI


struct ScrumsView: View {
    let jobs: [JobInfo]
    
    var body: some View {
        List(jobs) { job in
            CardView(job: job)
        }
    }
}


struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(jobs: JobInfo.sampleData)
    }
}

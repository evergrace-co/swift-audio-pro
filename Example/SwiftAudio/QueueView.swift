import SwiftUI
import SwiftAudioPro

struct QueueView: View {
    let controller = AudioController.shared
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            VStack {
                List {
                    if controller.player.currentItem != nil {
                        Section(header: Text("Playing Now")) {
                            QueueItemView(
                                title: controller.player.currentItem?.getTitle() ?? "",
                                artist: controller.player.currentItem?.getArtist() ?? ""
                            )
                        }
                    }
                    Section(header: Text("Up Next")) {
                        ForEach(controller.player.nextItems as! [DefaultAudioItem]) { item in
                            QueueItemView(
                                title: item.getTitle() ?? "",
                                artist: item.getArtist() ?? ""
                            )
                        }
                    }
                }
            }
            .navigationTitle("Queue")
            .toolbar {
                Button("Close") {
                    dismiss()
                }
            }
        }
    }
}

struct QueueItemView: View {
    let title: String
    let artist: String

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .fontWeight(.semibold)
            Text(artist)
                .fontWeight(.light)
        }
    }
}


#Preview {
    QueueView()
}


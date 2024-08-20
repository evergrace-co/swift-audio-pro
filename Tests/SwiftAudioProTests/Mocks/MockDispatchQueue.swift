import Foundation

@testable import SwiftAudioPro

final class MockDispatchQueue: DispatchQueueType {
    func async(flags: DispatchWorkItemFlags, execute work: @escaping @convention(block) () -> Void) {
        work()
    }
}

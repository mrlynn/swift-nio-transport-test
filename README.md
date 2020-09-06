# swift-nio-transport-test
Problem building basic vapor, and MongoDB Swift examples. 

## Run this test

1. Simply execute the bash script `init.sh` - this will perform a package init, update the Package.swift file with the necessary deps and run a build thereby producing the error.
2. Review the output to see the compile error.

```
mlynn@work swift-nio-transport-test $ sh init.sh
Enter project name: test
Creating library package: test
Creating Package.swift
Creating README.md
Creating Sources/
Creating Sources/test/test.swift
Creating Tests/
Creating Tests/LinuxMain.swift
Creating Tests/testTests/
Creating Tests/testTests/testTests.swift
Creating Tests/testTests/XCTestManifests.swift
Fetching https://github.com/apple/swift-nio-transport-services.git
Fetching https://github.com/apple/swift-nio.git
Cloning https://github.com/apple/swift-nio-transport-services.git
Resolving https://github.com/apple/swift-nio-transport-services.git at 1.9.0
Cloning https://github.com/apple/swift-nio.git
Resolving https://github.com/apple/swift-nio.git at 2.22.0
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSChannelOptions.swift:114:67: error: 'EstablishmentReport' is not a member type of 'NWConnection'
            public typealias Value = EventLoopFuture<NWConnection.EstablishmentReport?>
                                                     ~~~~~~~~~~~~ ^
Network.NWConnection:2:20: note: 'NWConnection' declared here
final public class NWConnection : CustomDebugStringConvertible {
                   ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSChannelOptions.swift:113:23: error: type 'NIOTSChannelOptions.Types.NIOTSEstablishmentReportOption' does not conform to protocol 'ChannelOption'
        public struct NIOTSEstablishmentReportOption: ChannelOption, Equatable {
                      ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio/Sources/NIO/ChannelOption.swift:18:20: note: protocol requires nested type 'Value'; do you want to add it?
    associatedtype Value
                   ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSChannelOptions.swift:124:51: error: 'PendingDataTransferReport' is not a member type of 'NWConnection'
            public typealias Value = NWConnection.PendingDataTransferReport
                                     ~~~~~~~~~~~~ ^
Network.NWConnection:2:20: note: 'NWConnection' declared here
final public class NWConnection : CustomDebugStringConvertible {
                   ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSChannelOptions.swift:123:23: error: type 'NIOTSChannelOptions.Types.NIOTSDataTransferReportOption' does not conform to protocol 'ChannelOption'
        public struct NIOTSDataTransferReportOption: ChannelOption, Equatable {
                      ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio/Sources/NIO/ChannelOption.swift:18:20: note: protocol requires nested type 'Value'; do you want to add it?
    associatedtype Value
                   ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSConnectionChannel.swift:416:64: error: 'EstablishmentReport' is not a member type of 'NWConnection'
                    let promise: EventLoopPromise<NWConnection.EstablishmentReport?> = eventLoop.makePromise()
                                                  ~~~~~~~~~~~~ ^
Network.NWConnection:2:20: note: 'NWConnection' declared here
final public class NWConnection : CustomDebugStringConvertible {
                   ^
/Users/mlynn/code/podcast/blog/vapor/test/swift-nio-transport-test/.build/checkouts/swift-nio-transport-services/Sources/NIOTransportServices/NIOTSConnectionChannel.swift:425:41: error: value of type 'NWConnection' has no member 'startDataTransferReport'
                    return nwConnection.startDataTransferReport() as! Option.Value
                           ~~~~~~~~~~~~ ^~~~~~~~~~~~~~~~~~~~~~~
[102/102] Compiling NIOTransportServices NIOTSListenerChannel.swift

```

# A shell script for creating an XCFramework for iOS.

# Starting from a clean slate
# Removing the build and output folders
rm -rf ./build &&\
rm -rf ./output &&\

# Cleaning the workspace cache
xcodebuild \
    clean \
    -workspace Bored.xcworkspace \
    -scheme BoredFramework

# Create an archive for iOS devices
xcodebuild \
    archive \
        SKIP_INSTALL=NO \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
        -workspace Bored.xcworkspace \
        -scheme BoredFramework \
        -configuration Release \
        -destination "generic/platform=iOS" \
        -archivePath build/BoredFramework-iOS.xcarchive

# Create an archive for iOS simulators
xcodebuild \
    archive \
        SKIP_INSTALL=NO \
        BUILD_LIBRARY_FOR_DISTRIBUTION=YES \
        -workspace Bored.xcworkspace \
        -scheme BoredFramework \
        -configuration Release \
        -destination "generic/platform=iOS Simulator" \
        -archivePath build/BoredFramework-iOS_Simulator.xcarchive

# Convert the archives to .framework
# and package them both into one xcframework
xcodebuild \
    -create-xcframework \
    -archive build/BoredFramework-iOS.xcarchive -framework BoredFramework.framework \
    -archive build/BoredFramework-iOS_Simulator.xcarchive -framework BoredFramework.framework \
    -output output/BoredFramework.xcframework &&\
    rm -rf build

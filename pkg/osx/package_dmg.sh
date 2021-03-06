#!/bin/bash
QTDIR=/Users/user/Qt/5.4/clang_64

QTDIR64=$QTDIR cargo build --release
mkdir -p Panopticon.app/Contents/{MacOS,Resources}
cp Info.plist Panopticon.app/Contents
cp ../../target/release/qtpanopticon Panopticon.app/Contents/MacOS/Panopticon
cp -R ../../qml Panopticon.app/Contents/Resources
$QTDIR/bin/macdeployqt Panopticon.app -qmldir=Panopticon.app/Contents/Resources/qml/ -dmg

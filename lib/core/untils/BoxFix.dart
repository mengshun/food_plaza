

import 'dart:ui';

class MSBoxFit {
  static late double physicalWidth;
  static late double physicalHeight;
  static late double dpr;
  static late double rpx;
  static late double px;
  static late double screenWidth;
  static late double screenHeight;
  static late double statusHeight;
  static late double safeBottom;

  static void initialize({
    double standardSize = 750,
  }) {
    physicalWidth = window.physicalSize.width;
    physicalHeight = window.physicalSize.height;
    dpr = window.devicePixelRatio;
    screenWidth = physicalWidth / dpr;
    screenHeight = physicalHeight / dpr;
    statusHeight = window.padding.top / dpr;
    safeBottom = window.padding.bottom / dpr;
    rpx = screenWidth / standardSize;
    px = rpx * 2;

    print("physicalWidth: $physicalWidth");
    print("physicalHeight: $physicalHeight");
    print("dpr: $dpr");
    print("rpx: $rpx");
    print("px: $px");
    print("screenWidth: $screenWidth");
    print("screenHeight: $screenHeight");
    print("statusHeight: $statusHeight");
    print("safeBottom: $safeBottom");
  }

  static double setRpx(double size) => size * rpx;

  static double setPx(double size) => size * px;
}
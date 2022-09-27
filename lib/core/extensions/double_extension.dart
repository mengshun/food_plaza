
import '../untils/BoxFix.dart';

extension DoubleFix on double {
  double get rpx => MSBoxFit.setRpx(this);
  double get px => MSBoxFit.setPx(this);
}

import '../untils/BoxFix.dart';

extension DoubleFix on int {
  double get rpx => MSBoxFit.setRpx(toDouble());
  double get px => MSBoxFit.setPx(toDouble());
}
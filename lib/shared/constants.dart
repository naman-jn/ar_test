import 'package:logger/logger.dart';
import 'package:project/shared/assets.dart';

var logger = Logger(
  filter: null,
  printer: PrettyPrinter(
    methodCount: 0, // number of method calls to be displayed
    errorMethodCount: 5, // number of method calls if stacktrace is provided
    lineLength: 20, // width of the output
    colors: false, // Colorful log messages
    printEmojis: true, // Print an emoji for each log message
    printTime: false, // Should each log print contain a timestamp
    noBoxingByDefault: false, // show boxes for each log
    excludeBox: {Level.verbose: false}, //hide box for specific logs
  ),
);

class Constants {
  static const List<String> modelList = [
    Assets.m_ryzenChip,
    Assets.m_desktop,
    Assets.m_floppyDisk,
    Assets.m_keyboard,
    Assets.m_motherboard,
    Assets.m_ram,
    Assets.m_ssd,
    Assets.m_usbDrive,
  ];

  static const List<String> ImageList = [
    Assets.i_ryzenChip,
    Assets.i_desktop,
    Assets.i_floppyDisk,
    Assets.i_keyboard,
    Assets.i_motherboard,
    Assets.i_ram,
    Assets.i_ssd,
    Assets.i_usb_drive,
  ];

  static const List<String> nameList = [
    "Ryzen Chip",
    "Desktop",
    "Floppy Disk",
    "Keyboard",
    "Motherboard",
    "RAM",
    "SSD",
    "USB Drive",
  ];
}

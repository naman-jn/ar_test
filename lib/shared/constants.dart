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
    // Assets.m_floppyDisk,
    Assets.m_keyboard,
    Assets.m_motherboard,
    Assets.m_ram,
    Assets.m_ssd,
    Assets.m_usbDrive,
  ];

  static const List<String> ImageList = [
    Assets.i_ryzenChip,
    Assets.i_desktop,
    // Assets.i_floppyDisk,
    Assets.i_keyboard,
    Assets.i_motherboard,
    Assets.i_ram,
    Assets.i_ssd,
    Assets.i_usb_drive,
  ];

  static const List<String> nameList = [
    "Ryzen Chip",
    "Desktop",
    // "Floppy Disk",
    "Keyboard",
    "Motherboard",
    "RAM",
    "SSD",
    "USB Drive",
  ];

  static const List<String> modelDescriptionList = [
    "The AMD Ryzen chip is a family of microprocessors designed by AMD (Advanced Micro Devices) as a competitor to Intel's CPUs. The Ryzen chips are based on the Zen architecture, which offers improved performance and efficiency compared to AMD's previous processor designs. The Ryzen chips are known for their high core and thread count, making them ideal for multi-tasking and intensive workloads such as gaming, video editing, and content creation. They are also designed to work with high-speed DDR4 memory, providing faster data transfer rates for improved system performance. Overall, the AMD Ryzen chip has gained a strong reputation for its high performance, reliability, and value for money, making it a popular choice among both gamers and professionals alike.",
    "A desktop computer is a personal computer designed for use on a desk or workstation. It typically consists of a tower or case containing the main components such as the CPU, motherboard, memory, and storage, and peripherals such as a monitor, keyboard, and mouse. Desktop computers are known for their versatility, power, and upgradability, allowing users to customize their systems for specific needs and preferences. They are commonly used for a wide range of tasks, including gaming, content creation, office work, and browsing the internet. Desktop computers also have the advantage of being less expensive than their portable counterparts, and they generally offer better performance and larger storage capacities. With the increasing popularity of remote work and virtual meetings, desktop computers remain an important tool for productivity and communication in both personal and professional settings.",
    // "Floppy Disk",
    "A keyboard is an essential input device used to input information and commands into a computer system. It is designed to resemble the layout of a traditional typewriter, with a set of keys that correspond to letters, numbers, and other characters. Keyboards can come in different shapes and sizes, with various features such as backlighting, wireless connectivity, and multimedia keys for controlling music and videos. They can also be optimized for specific tasks, such as gaming keyboards with extra programmable keys and mechanical switches for faster response times. With the growing popularity of mobile devices, keyboards have also become a popular accessory for tablets and smartphones. Overall, the keyboard remains an important tool for communication and productivity in the digital age, and advances in technology continue to make them more versatile and user-friendly.",
    "A motherboard is a circuit board that connects and controls all the other components of a computer system. It provides interfaces for the CPU, memory, storage, and other peripherals to communicate with each other. Motherboards also feature expansion slots and various technologies, making them more versatile and user-friendly. Choosing the right motherboard is essential for optimal performance and compatibility with other hardware components.",
    "RAM (Random Access Memory) is a type of computer memory that is used to temporarily store data that is being actively accessed by the CPU. It is a volatile memory, meaning that its contents are lost when the computer is turned off. RAM allows the CPU to access and retrieve data quickly, making it an essential component for the smooth operation of a computer system. The amount and speed of RAM can have a significant impact on the performance of a computer, with more RAM allowing for more applications to be run simultaneously and faster. Overall, RAM is a critical component of a computer system and plays an important role in determining its overall performance and capabilities.",
    "An SSD (Solid State Drive) is a type of storage device that has become increasingly popular in recent years due to its improved performance and reliability compared to traditional hard drives. Unlike traditional hard drives, which use spinning disks to read and write data, SSDs use NAND-based flash memory to store data. This allows them to provide faster read and write speeds, which can significantly improve the overall performance of a computer system. SSDs are also less prone to failure and are less affected by physical shock or vibration. They come in various form factors, such as 2.5-inch drives for laptops and desktops and M.2 drives for ultrabooks and other compact devices.",
    "A USB drive, also known as a flash drive or thumb drive, is a small portable storage device that uses flash memory to store and transfer data between computers and other devices. They are typically small and lightweight, making them easy to carry around in a pocket or bag. USB drives are commonly used for transferring files, backing up data, and sharing information between different computers or devices. They plug into a USB port and are available in various capacities ranging from a few gigabytes to several terabytes. USB drives have become a popular alternative to traditional optical media such as CDs and DVDs, and with the advent of USB 3.0 and USB-C, they offer faster data transfer speeds than ever before. Overall, USB drives are a convenient and versatile way to store and transfer data, making them an essential tool for many people in today's digital world.",
  ];
}

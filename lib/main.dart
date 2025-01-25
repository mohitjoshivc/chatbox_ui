import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chatbox',
      home: WrapperApp(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Caros',
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            textStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Caros',
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> stories = [
  {
    'imageUrl': 'assets/images/png/man-pic.png',
    'name': 'My status',
    'hasAdd': true
  },
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Adil'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Marina'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Dean'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Max'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Max 2'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Max 3'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Max 4'},
  {'imageUrl': 'assets/images/png/man-pic.png', 'name': 'Max 5'},
];

class WrapperApp extends StatefulWidget {
  const WrapperApp({super.key});

  @override
  State<WrapperApp> createState() => _WrapperAppState();
}

class _WrapperAppState extends State<WrapperApp> {
  int currentIndex = 0;
  // Dummy story data

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF000E08),
      appBar: AppBar(
        toolbarHeight: 100,
        foregroundColor: Colors.white,
        backgroundColor: const Color(0xFF000E08),
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          width: 44,
          height: 44,
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: const Color(0xFFA8B0AF),
              width: 2.0,
            ),
          ),
          child: SvgPicture.asset(
            'assets/images/svg/icons/search.svg',
            width: 22,
            height: 22,
          ),
        ),
        actions: [
          Container(
            width: 44,
            height: 44,
            margin: const EdgeInsets.only(right: 20),
            child: Image.asset(
              'assets/images/png/man-pic.png',
              width: 44,
              height: 44,
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100), // Story section height
          child: Container(
            padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
            width: double.infinity,
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: stories.length,
                itemBuilder: (context, index) {
                  final story = stories[index];
                  return Padding(
                    padding: const EdgeInsets.only(
                        right: 12), // Spacing between stories
                    child: StoryWidget(
                      imageUrl: story['imageUrl']!,
                      name: story['name']!,
                      hasAddButton: story['hasAdd'] ?? false,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          splashFactory: NoSplash.splashFactory, // Remove ripple effect
          highlightColor: Colors.transparent, // Remove highlight effect
        ),
        child: BottomAppBar(
          height: 90,
          padding: EdgeInsets.all(0),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              currentIndex: currentIndex,
              enableFeedback: false,
              elevation: 0,
              iconSize: 30,
              onTap: (i) {
                setState(() {
                  currentIndex = i;
                });
              },
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedFontSize: 16,
              unselectedFontSize: 16,
              type: BottomNavigationBarType.fixed,
              selectedItemColor: Color(0xFF24786D),
              unselectedItemColor: Color(0xFF797C7B),
              selectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w600,
              ),
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child:
                        SvgPicture.asset('assets/images/svg/tabs/message.svg'),
                  ),
                  label: 'Messages',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: SvgPicture.asset('assets/images/svg/tabs/call.svg'),
                  ),
                  label: 'Calls',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child: SvgPicture.asset('assets/images/svg/tabs/user.svg'),
                  ),
                  label: 'User',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 4.0),
                    child:
                        SvgPicture.asset('assets/images/svg/tabs/settings.svg'),
                  ),
                  label: 'Settings',
                ),
              ]),
        ),
      ),
    );
  }
}

class StoryWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final bool hasAddButton;

  const StoryWidget({
    super.key,
    required this.imageUrl,
    required this.name,
    this.hasAddButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 58,
              height: 58,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (hasAddButton)
              CircleAvatar(
                radius: 12,
                backgroundColor: Colors.black,
                child: Icon(Icons.add, color: Colors.white, size: 18),
              ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}

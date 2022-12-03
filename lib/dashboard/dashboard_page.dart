import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal.shade400,
      body: const _DashboardView(),
    );
  }
}

class _DashboardView extends StatelessWidget {
  const _DashboardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/snow.gif"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              _DashboardViewHeader(),
              SizedBox(height: 20),
              _DashboardViewContent(),
            ],
          ),
        ),
      ),
    );
  }
}

class _DashboardViewHeader extends StatelessWidget {
  const _DashboardViewHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const _ContentBox(
      child: Text(
        'Advent of Code\n2022',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _DashboardViewContent extends StatefulWidget {
  const _DashboardViewContent({Key? key}) : super(key: key);

  @override
  _DashboardViewContentState createState() => _DashboardViewContentState();
}

class _DashboardViewContentState extends State<_DashboardViewContent> {
  final pageViewController = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: _ContentBox(
        child: PageView(
          controller: pageViewController,
          onPageChanged: (newPage) => currentPage = newPage,
          children: [
            for (final challenge in challenges) ...[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: challenge['name'] != challenges.first['name']
                            ? () => pageViewController.jumpToPage(
                                  currentPage - 1,
                                )
                            : null,
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: challenge['name'] != challenges.first['name']
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        challenge['name'],
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 20),
                      GestureDetector(
                        onTap: challenge['name'] != challenges.last['name']
                            ? () => pageViewController.jumpToPage(
                                  currentPage + 1,
                                )
                            : null,
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: challenge['name'] != challenges.last['name']
                              ? Colors.white
                              : Colors.transparent,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Center(
                    child: Text('Hallo ich bin irgendwann mal content'),
                  ),
                  const Icon(
                    Icons.warning_outlined,
                    size: 100,
                  ),
                  const Spacer(),
                ],
              )
            ]
          ],
        ),
      ),
    );
  }

  List<Map<String, dynamic>> get challenges => [
        {
          'name': 'Challenge 1',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 2',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 3',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 4',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 5',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 6',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 7',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 8',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 9',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 10',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 11',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 12',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 13',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 14',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 15',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 16',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 17',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 18',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 19',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 20',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 21',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 22',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 23',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 24',
          'widget': const SizedBox.shrink(),
        },
        {
          'name': 'Challenge 25',
          'widget': const SizedBox.shrink(),
        },
      ];
}

class _ContentBox extends StatelessWidget {
  const _ContentBox({
    Key? key,
    required this.child,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.teal.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: child,
    );
  }
}

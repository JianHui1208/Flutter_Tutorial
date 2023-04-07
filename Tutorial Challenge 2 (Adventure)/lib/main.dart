import 'package:flutter/material.dart';
import 'package:assignment/story_brain.dart';

StoryController story = StoryController();

void main() => runApp(const AdventureGame());

class AdventureGame extends StatelessWidget {
  const AdventureGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(), // we are using the dark theme
      home: const StoryPage(),
    );
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  int _currentStoryIndex = 0;

  void _goToStory(int index) {
    setState(() {
      _currentStoryIndex = index;
    });
  }

  void _restartStory() {
    setState(() {
      _currentStoryIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: const BoxConstraints.expand(),
        child: Scaffold(body: _buildStory()),
      ),
    );
  }

  Widget _buildStory() {
    switch (_currentStoryIndex) {
      case 0:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _goToStory(2);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  child: TextButton(
                    onPressed: () {
                      _goToStory(1);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.blue),
                      foregroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      shape: MaterialStateProperty.resolveWith(
                          (states) => const BeveledRectangleBorder()),
                    ),
                    child: Text(
                      story.getChoice2(_currentStoryIndex),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      case 1:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _goToStory(2);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  child: TextButton(
                    onPressed: () {
                      _goToStory(3);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.blue),
                      foregroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      shape: MaterialStateProperty.resolveWith(
                          (states) => const BeveledRectangleBorder()),
                    ),
                    child: Text(
                      story.getChoice2(_currentStoryIndex),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      case 2:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _goToStory(5);
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  child: TextButton(
                    onPressed: () {
                      _goToStory(4);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.blue),
                      foregroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white),
                      shape: MaterialStateProperty.resolveWith(
                          (states) => const BeveledRectangleBorder()),
                    ),
                    child: Text(
                      story.getChoice2(_currentStoryIndex),
                      style: const TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      case 3:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _restartStory();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        );
      case 4:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _restartStory();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        );
      case 5:
        return SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    story.getStoryTitle(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: TextButton(
                  onPressed: () {
                    _restartStory();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.red),
                    foregroundColor: MaterialStateProperty.resolveWith(
                        (states) => Colors.white),
                    shape: MaterialStateProperty.resolveWith(
                        (states) => const BeveledRectangleBorder()),
                  ),
                  child: Text(
                    story.getChoice1(_currentStoryIndex),
                    style: const TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        );
      default:
        return Container();
    }
  }
}

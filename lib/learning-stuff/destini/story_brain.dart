import 'package:one_word/learning-stuff/destini/story.dart';

class StoryBrain {
  int _currentStoryNumber = 0;
  List<Story> _storyData = [
    Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1Text: 'I\'ll hop in. Thanks for the help!',
        choice1Destination: 2,
        choice2Text: 'Better ask him if he\'s a murderer first.',
        choice2Destination: 1),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1Text: 'At least he\'s honest. I\'ll climb in.',
        choice1Destination: 2,
        choice2Text: 'Wait, I know how to change a tire.',
        choice2Destination: 3),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1Text: 'I love Elton John! Hand him the cassette tape.',
        choice1Destination: 5,
        choice2Text: 'It\'s him or me! You take the knife and stab him.',
        choice2Destination: 4),
    Story(
      storyTitle:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1Text: 'Restart',
      choice1Destination: null,
      choice2Text: '',
      choice2Destination: null,
    ),
    Story(
      storyTitle:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1Text: 'Restart',
      choice1Destination: null,
      choice2Text: '',
      choice2Destination: null,
    ),
    Story(
      storyTitle:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1Text: 'Restart',
      choice1Destination: null,
      choice2Text: '',
      choice2Destination: null,
    )
  ];

  String getStory() {
    return _storyData[_currentStoryNumber].storyTitle;
  }

  String getChoice1() {
    return _storyData[_currentStoryNumber].choice1Text;
  }

  String getChoice2() {
    return _storyData[_currentStoryNumber].choice2Text;
  }

  void nextStory(int choiceNumber) {
    Story story = _storyData[_currentStoryNumber];

    if (story.choice1Destination == null) {
      restart();
      return;
    }

    if (choiceNumber == 1) {
      _currentStoryNumber = story.choice1Destination!;
    }

    if (choiceNumber == 2) {
      _currentStoryNumber = story.choice2Destination!;
    }
  }

  void restart() {
    _currentStoryNumber = 0;
  }

  bool buttonShouldBeVisible() {
    if (_currentStoryNumber < 3) {
      return true;
    } else {
      return false;
    }
  }
}

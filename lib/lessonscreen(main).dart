import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Lesson1 extends StatelessWidget {
  const Lesson1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> signs = [
      {
        'title': 'Hello',
        'description': 'Wave your hand to say Hello.',
        'image': 'https://example.com/hello_sign.jpg',
      },
      {
        'title': 'Thank You',
        'description': 'Flat hand moves from chin outward.',
        'image': 'https://example.com/thank_you_sign.jpg',
      },
      {
        'title': 'Please',
        'description': 'Flat hand circles on chest.',
        'image': 'https://example.com/please_sign.jpg',
      },
      {
        'title': 'I Love You',
        'description': 'Thumb, index, and pinky extended.',
        'image': 'https://example.com/iloveyou_sign.jpg',
      },
      {
        'title': 'Yes',
        'description': 'Fist moves up and down like nodding.',
        'image': 'https://example.com/yes_sign.jpg',
      },
      {
        'title': 'No',
        'description': 'Index and middle fingers tap thumb.',
        'image': 'https://example.com/no_sign.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Lesson 1: Basic Signs',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: signs.length,
          itemBuilder: (context, index) {
            final sign = signs[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        sign['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported,
                              size: 80);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sign['title']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            sign['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Lesson2 extends StatelessWidget {
  const Lesson2({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> phrases = [
      {
        'title': 'Good Morning',
        'description':
            'Hand moves from chin outward while the other hand rises.',
        'image': 'https://example.com/good_morning.jpg',
      },
      {
        'title': 'Good Night',
        'description':
            'One hand touches chin and then meets the other hand near the chest.',
        'image': 'https://example.com/good_night.jpg',
      },
      {
        'title': 'How are you?',
        'description':
            'Both hands move outward from chest, then one points forward.',
        'image': 'https://example.com/how_are_you.jpg',
      },
      {
        'title': 'What is your name?',
        'description':
            'Index fingers tap each other and then point to the person.',
        'image': 'https://example.com/what_is_your_name.jpg',
      },
      {
        'title': 'Sorry',
        'description': 'Closed fist circles over the chest.',
        'image': 'https://example.com/sorry.jpg',
      },
      {
        'title': 'Excuse Me',
        'description': 'Hand brushes the other hand lightly.',
        'image': 'https://example.com/excuse_me.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Lesson 2: Common Phrases',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: phrases.length,
          itemBuilder: (context, index) {
            final phrase = phrases[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        phrase['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported,
                              size: 80);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            phrase['title']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            phrase['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Lesson3 extends StatelessWidget {
  const Lesson3({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> vocabulary = [
      {
        'word': 'Thank You',
        'description': 'Hand moves outward from chin.',
        'image': 'https://example.com/thank_you.jpg',
      },
      {
        'word': 'Please',
        'description': 'Hand circles over chest in a circular motion.',
        'image': 'https://example.com/please.jpg',
      },
      {
        'word': 'Help',
        'description': 'One hand lifts the other palm-up with a thumbs-up.',
        'image': 'https://example.com/help.jpg',
      },
      {
        'word': 'Love',
        'description': 'Both arms cross over chest.',
        'image': 'https://example.com/love.jpg',
      },
      {
        'word': 'Friend',
        'description': 'Index fingers hook together and rotate.',
        'image': 'https://example.com/friend.jpg',
      },
      {
        'word': 'Food',
        'description': 'Fingers touch the lips as if bringing food to mouth.',
        'image': 'https://example.com/food.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Lesson 3: Essential Vocabulary',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: vocabulary.length,
          itemBuilder: (context, index) {
            final word = vocabulary[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        word['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported,
                              size: 80);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            word['word']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            word['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Lesson4 extends StatelessWidget {
  const Lesson4({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> sentences = [
      {
        'sentence': 'How are you?',
        'description': 'Move both hands outward with raised eyebrows.',
        'image': 'https://example.com/how_are_you.jpg',
      },
      {
        'sentence': 'What is your name?',
        'description': 'Tap fingers together then point.',
        'image': 'https://example.com/what_is_your_name.jpg',
      },
      {
        'sentence': 'Nice to meet you.',
        'description':
            'Swipe one hand over the other, then bring index fingers together.',
        'image': 'https://example.com/nice_to_meet_you.jpg',
      },
      {
        'sentence': 'Where is the bathroom?',
        'description':
            'Shake the "T" hand shape (thumb between index and middle finger).',
        'image': 'https://example.com/where_is_bathroom.jpg',
      },
      {
        'sentence': 'I love learning sign language.',
        'description':
            'Cross arms over chest for "love" and spell "sign language" in ASL.',
        'image': 'https://example.com/love_sign_language.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Lesson 4: Common Sentences',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: sentences.length,
          itemBuilder: (context, index) {
            final sentence = sentences[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        sentence['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported,
                              size: 80);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            sentence['sentence']!,
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            sentence['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Lesson5 extends StatelessWidget {
  const Lesson5({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> numbers = [
      {
        'number': '1',
        'description': 'Hold up your index finger.',
        'image': 'https://example.com/number_1.jpg',
      },
      {
        'number': '2',
        'description': 'Hold up your index and middle finger.',
        'image': 'https://example.com/number_2.jpg',
      },
      {
        'number': '3',
        'description': 'Hold up your thumb, index, and middle finger.',
        'image': 'https://example.com/number_3.jpg',
      },
      {
        'number': '4',
        'description': 'Hold up four fingers, keeping your thumb folded.',
        'image': 'https://example.com/number_4.jpg',
      },
      {
        'number': '5',
        'description': 'Hold up all five fingers.',
        'image': 'https://example.com/number_5.jpg',
      },
      {
        'number': '6',
        'description':
            'Touch your pinky to your thumb while extending other fingers.',
        'image': 'https://example.com/number_6.jpg',
      },
      {
        'number': '7',
        'description':
            'Touch your ring finger to your thumb while extending other fingers.',
        'image': 'https://example.com/number_7.jpg',
      },
      {
        'number': '8',
        'description':
            'Touch your middle finger to your thumb while extending other fingers.',
        'image': 'https://example.com/number_8.jpg',
      },
      {
        'number': '9',
        'description':
            'Touch your index finger to your thumb while extending other fingers.',
        'image': 'https://example.com/number_9.jpg',
      },
      {
        'number': '10',
        'description': 'Make a fist and shake your thumb up and down.',
        'image': 'https://example.com/number_10.jpg',
      },
    ];

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Colors.purple,
          centerTitle: true,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Lesson 5: Numbers',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: numbers.length,
          itemBuilder: (context, index) {
            final number = numbers[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        number['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return const Icon(Icons.image_not_supported,
                              size: 80);
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Number ${number['number']}',
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            number['description']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class Lesson6 extends StatelessWidget {
  const Lesson6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80), // Increased height
        child: AppBar(
          backgroundColor: Colors.purple, // Purple AppBar
          centerTitle: true,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(30), // Bottom radius
            ),
          ),
          leading: IconButton(
            icon:
                Icon(Icons.arrow_back, color: Colors.white), // White back icon
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 10), // Added space before title
            child: Text(
              'Lesson 6: Complex Sentences',
              style: TextStyle(color: Colors.white), // White title text
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Advanced Sign Language Sentences',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              buildSentenceWithSign(
                  '1. "If you finish your homework, we will go to the park."',
                  'https://example.com/sign_if_you_finish_homework.png'),
              buildSentenceWithSign(
                  '2. "I love learning sign language because it helps me communicate."',
                  'https://example.com/sign_love_learning.png'),
              buildSentenceWithSign(
                  '3. "When it rains, I like to read books at home."',
                  'https://example.com/sign_when_it_rains.png'),
              buildSentenceWithSign(
                  '4. "Although I was tired, I completed my assignment."',
                  'https://example.com/sign_although_tired.png'),
              buildSentenceWithSign(
                  '5. "He said that he would call me when he arrives."',
                  'https://example.com/sign_he_said_call_me.png'),
              buildSentenceWithSign(
                  '6. "Because she studied hard, she passed the exam."',
                  'https://example.com/sign_she_studied_passed.png'),
              buildSentenceWithSign(
                  '7. "Unless you practice daily, you will forget the signs."',
                  'https://example.com/sign_unless_practice.png'),
              buildSentenceWithSign(
                  '8. "While I was cooking, my friend called me."',
                  'https://example.com/sign_while_cooking_called.png'),
              buildSentenceWithSign(
                  '9. "Even though it was cold, we went for a walk."',
                  'https://example.com/sign_even_though_cold_walk.png'),
              buildSentenceWithSign(
                  '10. "If you don’t understand, ask me for help."',
                  'https://example.com/sign_if_you_dont_understand.png'),
              buildSentenceWithSign(
                  '11. "Since I started practicing, my signing has improved."',
                  'https://example.com/sign_since_practicing_improved.png'),
              buildSentenceWithSign(
                  '12. "I will wait here until my friend arrives."',
                  'https://example.com/sign_wait_until_arrives.png'),
              buildSentenceWithSign(
                  '13. "Because I was late, I missed the meeting."',
                  'https://example.com/sign_late_missed_meeting.png'),
              buildSentenceWithSign(
                  '14. "Before you leave, make sure to say goodbye."',
                  'https://example.com/sign_before_leave_say_goodbye.png'),
              buildSentenceWithSign(
                  '15. "Even if it rains, we will still go to the event."',
                  'https://example.com/sign_even_if_rains_event.png'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildSentenceWithSign(String sentence, String imageUrl) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          sentence,
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 5),
        Image.network(imageUrl),
        SizedBox(height: 15),
      ],
    );
  }
}

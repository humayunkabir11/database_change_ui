import 'package:flutter/material.dart';

class ChangePage extends StatefulWidget {
  const ChangePage({Key? key}) : super(key: key);

  @override
  State<ChangePage> createState() => _ChangePageState();
}

class _ChangePageState extends State<ChangePage> {
  Map<dynamic, dynamic> dataList = {
    "status": "something",
    "questions": [
      {
        "type": "checkbox",
        "ques": "What is your sex",
        "ans": ["Male", "Female"]
      },
      {
        "type": "radio",
        "ques": "Please select your age range?",
        "ans": ["18-25", "25-30", "30-35", "35-40", "40-45", "45-50"]
      },
      {
        "type": "text",
        "ques": "Please share with us why you’re looking for help today. ( You can select up to 3)",
        "ans": [
          "I’ve been feeling anxious and worried",
          "I’ve been feeling empty and unfulfilled",
          "I’m dealing with personal image issues",
          "I’ve been stressed because of work/school",
          "I don’t feel like myself",
          "I’ve experienced traumatic stress (past & present)"
        ]
      },
      {
        "type": "text",
        "ques": "Please share with us why you’re looking for help today. ( You can select up to 3)",
        "ans": [
          "I’ve been feeling anxious and worried",
          "I’ve been feeling empty and unfulfilled",
          "I’m dealing with personal image issues",
          "I’ve been stressed because of work/school",
          "I don’t feel like myself",
          "I’ve experienced traumatic stress (past & present)"
        ]
      },
      {
        "type": "text",
        "ques": "Please share with us why you’re looking for help today. ( You can select up to 3)",
        "ans": [
          "I’ve been feeling anxious and worried",
          "I’ve been feeling empty and unfulfilled",
          "I’m dealing with personal image issues",
          "I’ve been stressed because of work/school",
          "I don’t feel like myself",
          "I’ve experienced traumatic stress (past & present)"
        ]
      },
      {
        "type": "text",
        "ques": "Excellent work! Let’s keep going!",
        "subQues": "What’s Next?",
        "ans": "After you register, we will use your responses to select a therapist who meets your specific needs. The majority of individuals are matched promptly and within a day or two."
      },
      {
        "type": "text",
        "ques": "To receive updates on your match, please provide your email address below.",
        "subQues": "What’s Next?",
        "ans": "After you register, we will use your responses to select a therapist who meets your specific needs. The majority of individuals are matched promptly and within a day or two."
      },
    ],
  };

  late  PageController _controller = PageController(initialPage: 0);


  int currentPageIndex = 0; // Track the current page index


  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }
  void changePage(int pageIndex) {
    setState(() {
      currentPageIndex = pageIndex;
      _controller.animateToPage(
        pageIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Image.asset(
            "assets/images/Business Plan.png",
            height: 200,
            width: 200,
          ),
          Row(
            children: List.generate(
              dataList["questions"].length,
                  (index) => Expanded(
                child: Container(
                  height: 10,
                  width: 64,
                  margin: const EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: index == currentPageIndex
                        ? Colors.blue // Change color for the current page
                        : Colors.green.shade100,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: dataList["questions"].length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildQuestionWidget(dataList["questions"][index]),
                );
              },
            ),
          ),
          if (currentPageIndex < dataList["questions"].length - 1)
            ElevatedButton(
              onPressed: () {
                // Change the page to the next page
                num nextPageIndex =
                    (currentPageIndex + 1) % dataList["questions"].length;
                changePage(nextPageIndex.toInt());
              },
              child: Text('Next Page'),
            )
          else
            ElevatedButton(
              onPressed: () {
                // Implement your submit logic here
                // For now, it just prints a message
                print('Submit button pressed');
              },
              child: const Text('Submit'),
            ),
        ],
      ),
    );
  }

  Widget buildQuestionWidget(Map<String, dynamic> questionData) {
    String questionType = questionData['type'];
    switch (questionType) {
      case 'checkbox':
        return CheckBoxWidget(questionData);
      case 'radio':
        return RadioWidget(questionData);
      case 'text':
        return TextFieldWidget(questionData);
      default:
        return SizedBox.shrink();
    }
  }
}

class CheckBoxWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const CheckBoxWidget(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    // Implement your CheckBoxWidget UI here using the 'data'
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data['ques']),
        Column(
          children: List.generate(data["ans"].length, (index) => GestureDetector(

            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,width: 20,
                    decoration:  BoxDecoration(
                        color: Colors.cyan,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.green,width: 0.5)
                    ),
                  ),
                  const SizedBox(width: 16,),

                      Text(data["ans"][index])

                ],

              ),
            ),
          ),),
        ),
      ],
    );

      // Text(data['ques']);
  }
}
class RadioWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const RadioWidget(this.data);

  @override
  Widget build(BuildContext context) {
    // Implement your RadioWidget UI here using the 'data'
    return Container(
      child: Text(data['ques']),
    );
  }
}
class TextFieldWidget extends StatelessWidget {
  final Map<String, dynamic> data;

  const TextFieldWidget(this.data);

  @override
  Widget build(BuildContext context) {
    // Implement your TextFieldWidget UI here using the 'data'
    return Container(
      child: Text(data['ques']),
    );
  }
}

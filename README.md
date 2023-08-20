# flutter_responsive_helper

flutter_responsive_helper is a Flutter package which will help you make your application responsive without doing any calculations. Just add the same measurements as given by the designer!

# How does it work?

You just have to initialize flutter_responsive_helper by giving the size of the screen which is used in the UI. Then just copy paste the sizes of the objects which are given in the UI and paste it in your code by using .h / .w / .t after giving the size. Now flutter_responsive_helper will automatically calculate and make that object responsive according to the user's screen and your code will look really very similar to the design given by the designer.

## Installation

Install the package in your code

```bash
flutter pub add flutter_responsive_helper
```

## Usage

```dart
class ResponsiveExample extends StatefulWidget {
  const ResponsiveExample({super.key});

  @override
  State<ResponsiveExample> createState() => _ResponsiveExampleState();
}

class _ResponsiveExampleState extends State<ResponsiveExample> {
  @override
  void initState() {
    // TODO: implement initState
    initializeSize(396, 812); // Give the size of the screen which is used in the design
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
              Container(
                width: 350.w(context), // width of the object which is given in the design file
                height: 80.h(context), // height of the object which is given in the design file
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

## Author

<a href="https://github.com/Malay1121"><img src="https://avatars.githubusercontent.com/u/56907997?v=3" title="Malay1121" width="80" height="80"></a>

<a class="github-button" href="https://github.com/Malay1121" aria-label="Follow @Malay1121 on GitHub">Follow @Malay1121</a>

<a class="github-button" href="https://www.linkedin.com/malay-patel-dev/" aria-label="LinkedIn: malay-patel-dev">LinkedIn: @Malay Patel</a>

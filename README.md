<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.
For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).
For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# Multiple Pile Faces

**Multiple Pile Faces** package lets you display a stacked list of users/persons in your Flutter app.

## Features

The `FacePile` widget is built to be `a unique stacked list` that can be used in your Flutter app.This widget is often used to assign tasks to individuals inside a workflow or to share who has access to a certain view or file. Each circle has a picture of the person it symbolizes.

The package will handle the animation by itself.

![thumb](https://user-images.githubusercontent.com/68671238/193428931-13acc0a5-a9dd-45b8-ab18-db9b1111e0f4.png)

<hr>

## Getting started

1. Add the latest version of package to your `pubspec.yaml` (and run `dart pub get`):

```dart
dependencies:
  multi_pile_faces: ^1.0.0
```

2. Import the package and use it in your Flutter App.

```dart
import 'package:multi_pile_faces/multi_pile_faces.dart';
```

<hr>

## Usage

There are a number of properties that you can modify:

- faces (List of users)
- faceSize (Avatar size)
- facePercentOverlap (Avatar percent overlap)
- animationDuration (Animation duration)
- ... etc.

**Example Usage ( complete with all params ):**

<table>
 <tr>
 <td>

```dart

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 200),
          child: FacePile(
            faces: _allUsers,
            faceSize: 42,
            facePercentOverlap: .4,
            borderColor: Colors.white,
            nameLabelColor: Colors.black,
            borderWidth: 0.4,
            animationDuration: const Duration(milliseconds: 500),
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: ElevatedButton(
              child: const Text('Remove User Icon'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
              ),
              onPressed: _removeUserFromPile,
            ),
          ),
          FloatingActionButton(
            onPressed: _addUserToPile,
            mini: true,
            backgroundColor: Colors.white,
            child: const Icon(Icons.add, color: Colors.black,),
          ),
        ],
      ),
    );
  }

```
   </td>
   <td>
     Here's what it looks like:

<hr>




https://user-images.githubusercontent.com/68671238/193429465-5f83de54-d103-45d9-a3da-78937372cd63.mp4






   </td>
  </tr>
  </table>
<hr>

## Next Goals
We are working on some improvements including:

- [ ] Make the widget more customizable.

## Issues & Feedback
Please file an [issue!](https://github.com/aliMissaoui/Flutter---Multiple-Pile-Faces-Package/issues) to send feedback or report a bug. Thank you!

```

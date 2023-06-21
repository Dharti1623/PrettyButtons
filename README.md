# pretty_button

- `pretty_button` a pretty and customizable 3D button for your flutter project with minimal design
  and highly customizable.
- It can be use as a 3d button and also you can customize it.
- You can also make button disable using isDisable property.

### Platform Support

| Android | iOS | Web | MacOS | Linux | Windows |
| :-----: | :-: | :---: | :-----: | :-: | :---: |
| &#9989; | &#9989; | &#9989; | &#9989; | &#9989; | &#9989; |

| <b>android</b>                                                                                                                                                                                                                            |                                                                                                               <b>ios</b>                                                                                                               |                                                                                                               <b>macos</b>                                                                                                               | <b>web</b>                                                                                                                                                                                                                         |
|:------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| <a href="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/android.png"><img src="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/android.png" width="200px;" alt="android"/></a>   |  <a href="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/iphone.png"><img src="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/iphone.png" width="200px;" alt="iphone"/></a>  |  <a href="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/macOs.png"><img src="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/macOs.png" width="250px;" alt="macos"/></a>  | <a href="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/web.png"><img src="https://raw.githubusercontent.com/Dharti1623/prettyButtons/main/screenshots/web.png" width="250px;" alt="web"/></a>   |

<!-- ![Android Image](screenshots/android.png)
![ios Image](screenshots/iphone.png)
![macos Image](screenshots/macOs.png)
![web Image](screenshots/web.png) -->

### Installation

Add it as a dependency in their `pubspec.yaml`:

1. Add the latest version of package to your pubspec.yaml (and run`dart pub get`):
    ```yaml
        dependencies:
          pretty_button: ^0.0.5
    ```

2. Import the package and use it in your Flutter App.
    ```dart
        import 'package:fancy_containers/fancy_containers.dart';
    ```

### Customizations

| `Attribute`           |    `Type`    |     `Default`      | `Description`                                                      |
|:--------------------|:----------:|:----------------:|:-----------------------------------------------------------------|
| topShadowColor    |  Color   |   onPrimary    | shadow color of top and left side, defaults to onPrimary         |
| `bottomShadowColor` |  `Color`   |    `primary`     | Shadow color of bottom and right side, defaults to primary       |
| `backgroundColor`   |  `Color`   | `outlineVariant` | The background color of button, defaults to outlineVariant       |
| `innerPadding`      |  `Double`  |       `8`        | Padding of child widget, defaults to 8                           |
| `outerPadding`      |  `Double`  |       `8`        | Padding of button widget, defaults to 8                          |
| `blurRadius`        |  `Double`  |       `5`        | The blur radius of the button, defaults to 5                     |
| `spreadRadius`      |  `Double`  |       `1`        | The spread radius of the button, defaults to 1                   |
| `height`            |  `Double`  |       `50`       | Height of the button, defaults to 50                             |
| `width`             |  `Double`  |      `150`       | Width of the button defaults to 150,                             |
| `borderRadius`      |  `Double`  |       `15`       | The border radius of the button, defaults to 15                  |
| `isDisable`         |   `Bool`   |     `false`      | You can make button disable by making it true, defaults to false |
| `onTap`             | `Function` |                  | Button press handler                                             |
| `child`             |  `Widget`  |                  | Inner content for the button, required*                          |

### Usage

```flutter
    import 'package:pretty_button/pretty_button.dart';
```

```
   PrettyButton(
         isDisable: false,
         blurRadius: 5,
         spreadRadius: 1,
         topShadowColor: Theme.of(context).colorScheme.onPrimary,
         bottomShadowColor: Theme.of(context).colorScheme.primary,
         backgroundColor: Theme.of(context).colorScheme.outlineVariant,
         width: 150,
         height: 50,
         borderRadius: 15,
         innerPadding: const EdgeInsets.all(8.0),
         outerPadding: const EdgeInsets.all(8.0),
         onTap: () {
               print('Button clicked');
         },
         child: Text('buttonTxt',
               style: TextStyle(
                     color: Theme.of(context).colorScheme.primary,
                     fontSize: 18,
                     fontWeight: FontWeight.bold,
               ),
         ),
   );
    
```

Check example folder for more.
</br></br>

## Publisher

<table>
  <tr>
    <td align="center"><a href="https://www.linkedin.com/in/dhartichauhan"><img src="https://avatars.githubusercontent.com/u/102344648?s=400&u=f090532c81927a74127240b841de2f79e388fc02&v=4" width="100px;" alt=""/><br /><sub><b>Dharti Chauhan </b></sub></a></td>
  </tr>
</table>
<br/>

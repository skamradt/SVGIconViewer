# SVGIconViewer

![Picture of application UI](./images/Screenshot_2024-09-16_095721.png "Screen Capture")

A simple windows based viewer containing over 27,450 individual SVG icons with the ability to copy
and export individual icons for use in other projects.  Two-tone ability was added
to render icons using both the outline and filled versions where there is a match.

Exporting to PNG will optionally create additional scaled versions ready to be imported
into a Delphi image collection.

This project includes icons from the [Microsoft fluent UI System Icons](https://github.com/microsoft/fluentui-system-icons)
and the [tabler-icons](https://github.com/tabler/tabler-icons) public repositories. Please see the appopriate library
for copyright and license information.

## Support

If you find SvgIconViewer useful, please give it a star.

Your support is greatly appreciated!

You can also support my work by buying me a coffee.

[<img src="./images/buymeacoffee.svg"/>](https://buymeacoffee.com/skamradt)

## Installation

You can either download the source and compile using Delphi 12.0 or greater, OR download the latest [release](https://github.com/skamradt/SVGIconViewer/releases) zip file
and extract all contents to the location of your choosing.

## Usage

The Icons along the top are
 
 | icon | description |
 | ---- | ----------- |
 | ![library](./images/library.svg) |When pressed with the mouse will display the list of collections available in the library.|
 | ![outline](./images/iconoutline.svg) | When pressed will show the outlined icon subset in the collection |
 | ![filled](./images/iconfilled.svg) | When pressed will show the filled icon subset in the collection |
 | ![twotone](./images/icontwotone.svg) | When pressed will show the generated twotone icon subset in the collection based on icons which match in name in both the outline and filled subsets. |
 | Fill, Tone, Back | These buttons, when pressed will allow selecting the color for the appropriate section. Fill is either the stroke color for outline/twotone and the fill color for solid icons. Tone is the fill color for solid icons rendered in twotone mode.  Back is the UI background color and is not stored in the SVG or PNG which will have a transparent background. |
 | ![config](./images/iconsettings.svg) | When pressed will display some options available to the program. |

## Contributing

Contributions are welcome!
If you have suggestions for improvements or find any issues, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
See the LICENSE file for details.

## Dependencies

This project makes use of the [TControlList](https://docwiki.embarcadero.com/RADStudio/Athens/en/10.4_Sydney_-_Release_2#New_VCL_TControlList_Control)
component released in Delphi 10.4.2 as well as the [Skia4Delphi](https://docwiki.embarcadero.com/RADStudio/Athens/en/Skia4Delphi) released with Delphi 12.
Because the program makes heavy use of multi-line strings, the project requires Delphi 12.0 or better to build.



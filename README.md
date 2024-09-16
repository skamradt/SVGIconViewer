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

## Contributing

Contributions are welcome!
If you have suggestions for improvements or find any issues, please open an issue or submit a pull request.

## License

This project is licensed under the MIT License.
See the LICENSE file for details.

## Dependencies

This project makes use of the [TControlList](https://docwiki.embarcadero.com/RADStudio/Athens/en/10.4_Sydney_-_Release_2#New_VCL_TControlList_Control)
component released in Delphi 10.4.2 as well as the [Skia4Delphi](https://docwiki.embarcadero.com/RADStudio/Athens/en/Skia4Delphi) released with Delphi 12.

It may be possible to compile this project using Delphi 10.4 along with the public repository of
[Skia4Delphi](https://github.com/skia4delphi/skia4delphi) however the suggested target is Delphi 12.

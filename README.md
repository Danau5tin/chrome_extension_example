# chrome_extension_example
An example chrome extension app

## Building & running

1. Clone this repo.
2. Run ```flutter build web --web-renderer html --csp``` from the root directory of the project.
3. Open chrome://extensions in Chrome
4. Enable developer mode
5. Click "Load unpacked"
6. Select the build/web directory of the project

**Note:** If you would like make changes to the project. First remove the extension from chrome://extensions and then run ```flutter build web --web-renderer html --csp``` again.

**Note:** You can run ```flutter run -d chrome``` to run the app as a normal flutter web app. However the state will not be saved across sessions as Flutter randomly allocates a port number each time.
 * In order to save state when not using the extension, run  ```flutter run -d chrome --web-hostname localhost --web-port 6030```. You may need to change the port number if it is already in use.

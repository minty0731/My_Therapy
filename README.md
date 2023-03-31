# My_Therapy

## I. Install vscode and emulator

First, install Vscode through this link: [https://code.visualstudio.com/](url)

Open vscode and load the file my_therapy in. And install the Dart Extension in order to create flutter emulator, you can also use android studio, I used Pixel 2 API 30. Instructions as following pictures:


![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/vs_code_openfile.png)

Open File section and click on Open File...

![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/vs_code_select_file.png)

Choose my therapy folder where you install this github

![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/dart_extension.png)

Download dart extension

![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/create_android.png)

click on devices on the bottom right of vscode, then click on the create Android emulator or use your own Android studio

## II. Running the emulator
To run the emulator, open the emulator, and go to my_therapy/lib/main.dart and press F5 to start the application

![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/run_emu.png)

In the app UI, the first page is the home page, next is the stats pages where you can see the stats of your average daily steps and sleep and it will connect with tensor flow in the backend to check your physical and mental well-being. In this stat page, you can swipe left or right to see this week or last week (for prototype). And lastly, the last page is suggestion page to direct people into good habit such as meditation, listening to relaxing music; And as well as finding nearest counselor if the user is feeling unwell.

![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/app_UI.png)

## III. Running the emulator with authetication
To run the code with authentication (login, register), open my_therapy/lib/pages/homepage.dart and import the LoginOrRegister.dart and change the MainPage() at line 11 to LogInOrRegisterPage() and restart the application.


![alt text](https://github.com/minty0731/My_Therapy/blob/main/img_readme/authen_change.png)

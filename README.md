# AnimaMatrix
![cillexia_repository_AnimaMatrixCYAN](https://user-images.githubusercontent.com/92103579/160596076-c4b00bc1-91c8-4c22-9108-3d9b9a75f82d.png)

This is code for the matrix animation you see below.

![AnimaMatrixCYAN_cillexia_600×600](https://user-images.githubusercontent.com/92103579/160474564-abb855b1-d26a-45f7-8121-407bb82c8072.gif)

It is a perfect endless loop running for infinity.

# ❔ How to use it ❔
The AnimaMatrix folder contains the code for the animation. Just put this folder with all its content into your project's directory used by Processing.

#### ⚙️ MATRIX SETTINGS
- MATRIX_SIZE: Size of the character.
- MATRIX_COLOR: Font color
- MATRIX_COLOR2: Color of a sequence's first char.
- GLOW: If set to true, this makes the characters glow. (ATTENTION: Enabling GLOW might SLOW DOWN frames dramatically, causing lag running in real time)
- COLUMNS: An array which contains the Columns to display.

#### Class: Column
Column contains a character sequence for one column to display. It also holds some more parameters, to set the speed with which the sequence drops, the offset on screen, the switching speed of the chars, and how often the sequence should repeat.
- STRING: Contains the character sequence of one column.
- SPEED: Column drop speed [1...100]
- OFFSET: Offset on the screen [1...100]
- SWITCH_SPEED: How fast chars switch [1...100...]
- DUPLICATE: How often to repeat the sequence [0...]

#### 🎬 RECORD SETTINGS
- TOTAL_FRAMES: This value determines the total amount of frames to record.
- RECORD: By setting RECORD to true, single frames are recorded.
- NAME: The name of both, the recorded frames, and the destination folder to put those into.
- FORMAT: Lets you set the formate. By default this is set to png.

#### 🎞 Frames to Animation?
The outputed images are your animation frame by frame. Now you can create a gif, mp4, mov, webm, or any other file type from the just generated images.

# Also
You will find some finished rendered matrix animation videos here.

# cillexia
AnimaMatrix is a cillexia project created by Christian Bietsch.

🌐 Website: www.cillexia.net

YEAR 2022

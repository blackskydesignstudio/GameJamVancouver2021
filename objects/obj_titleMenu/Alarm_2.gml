// Alarm sets intro credits visable

if (currentText < introCreditLength - 1) {
currentText++; 
}

alarm[3] = room_speed * 3;
fadeText = true;
textVisable = true;
fadeTextDown = false;

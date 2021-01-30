//  Alarm triggers intro text fade out
fadeTextDown = true;
fadeText = false;

if (currentText < introCreditLength - 1) {
alarm[2] = room_speed * 2;
}

if (currentText == introCreditLength - 1) {
alarm[4] = room_speed * 3;
}

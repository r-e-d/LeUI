keyboardMap = {}
keyboardMap[8] = "Backspace"
keyboardMap[9] = "Tab"
keyboardMap[13] = "Return"
keyboardMap[32] = "Space"

for i = 33,126 do
	keyboardMap[i] = string.upper(string.char(i))
end

keyboardMap[127] = "Delete"
keyboardMap[1073741881] = "CapsLock"

for i = 1073741882,1073741895 do
	keyboardMap[i] = "F" .. (i - 1073741881)
end

keyboardMap[1073741898] = "Home"
keyboardMap[1073741899] = "PageUp"
keyboardMap[1073741901] = "End"
keyboardMap[1073741902] = "PageDown"
keyboardMap[1073741903] = "Right"
keyboardMap[1073741904] = "Left"
keyboardMap[1073741905] = "Down"
keyboardMap[1073741906] = "Up"

for i = 1073741913,1073741921 do
	keyboardMap[i] = "Keypad " .. (i - 1073741912)
end
keyboardMap[1073741922] = "Keypad 0"

keyboardMap[1073742048] = "Left Ctrl"
keyboardMap[1073742049] = "Left Shift"
keyboardMap[1073742050] = "Left Alt"
keyboardMap[1073742052] = "Right Ctrl"
keyboardMap[1073742053] = "Right Shift"

#include <iostream>
#include <sstream>
#include <string>
#include <windows.h>
void simulateKeyInput(char);
void simulateKeyInput(char, char);
bool getTextFromClipboard(std::stringbuf & buffer);
int main(int argc, char ** argv) {
    int cmd;
    while (1) {
        std::cout << "Enter 1 to work, 0 to stop:\n";
        std::cin >> cmd;
        if (cmd == 0) break;
        if (cmd != 1) continue;
        std::cout << "wait for a while..." << std::endl;
        Sleep(1000);
        // std::fstream fin;
        std::stringbuf buf;
        getTextFromClipboard(buf);
        std::istream in(&buf);
        std::string buffer;
        bool flag = false;
        // in.open("res/pastehere.txt");
        while (std::getline(in, buffer)) {
            if (buffer.size() == 0) continue;
            size_t i = 0;
            if (flag) {
                while (buffer[i] == ' ') i++;
                if (!i) {
                    simulateKeyInput(VK_BACK); 
                    flag = false;
                }
            }
            for (; i < buffer.length(); i++) {
                char it = buffer[i];
                if (islower(it)) simulateKeyInput(it - 32);
                else if (isupper(it)) simulateKeyInput(VK_SHIFT, it);
                else if (isdigit(it)) simulateKeyInput(it);
                else if (it == '\\') simulateKeyInput(220);
                else if (it == '\'') simulateKeyInput(222);
                else if (it == '\"') simulateKeyInput(VK_SHIFT, 222);
                else if (it == ':') {
                    simulateKeyInput(VK_SHIFT, 186);
                    flag = true;
                }
                else if (it == '(') simulateKeyInput(VK_SHIFT, '9');
                else if (it == ')') simulateKeyInput(VK_SHIFT, '0');
                else if (it == '[') simulateKeyInput(219);
                else if (it == ']') simulateKeyInput(221);
                else if (it == '{') simulateKeyInput(VK_SHIFT, 219);
                else if (it == '}') simulateKeyInput(VK_SHIFT, 221);
                else if (it == ' ') simulateKeyInput(VK_SPACE);
                else if (it == '=') simulateKeyInput(187);
                else if (it == '+') simulateKeyInput(VK_SHIFT, 187);
                else if (it == '-') simulateKeyInput(189);
                else if (it == '_') simulateKeyInput(VK_SHIFT, 189);
                else if (it == '*') simulateKeyInput(VK_SHIFT, '8');
                else if (it == '/') simulateKeyInput(191);
                else if (it == ',') simulateKeyInput(188);
                else if (it == '.') simulateKeyInput(190);
                else if (it == '!') simulateKeyInput(VK_SHIFT, '1');
                else if (it == '%') simulateKeyInput(VK_SHIFT, '5');
            }
            simulateKeyInput(VK_RETURN); // simulate enter
        }
    }
    // fin.close();
    return 0;
}
void simulateKeyInput(char key) {
    keybd_event(key, 0, 0, 0);
    keybd_event(key, 0, KEYEVENTF_KEYUP, 0);
    Sleep(40);
}
void simulateKeyInput(char key1, char key2) {
    keybd_event(key1, 0, 0, 0);
    keybd_event(key2, 0, 0, 0);
    keybd_event(key1, 0, KEYEVENTF_KEYUP, 0);
    keybd_event(key2, 0, KEYEVENTF_KEYUP, 0);
    Sleep(40);
}
bool getTextFromClipboard(std::stringbuf & buffer) {
    if (OpenClipboard(NULL)) {
        HGLOBAL hMem = GetClipboardData(CF_TEXT);
        if (NULL != hMem) {
            char * lpstr = (char*) GlobalLock(hMem);
            if (NULL != lpstr) {
                buffer.str(std::string(lpstr));
                GlobalUnlock(hMem);
            }
        }
        CloseClipboard();
        return true;
    }
    return false;
}
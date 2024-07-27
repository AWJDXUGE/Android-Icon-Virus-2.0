﻿#include <iostream>
#include <memory>
#include <stdio.h>
#include <tchar.h>
#include <time.h>
#include <Windows.h>
#pragma comment(lib, "Winmm.lib")
#pragma comment( linker, "/subsystem:\"windows\" /entry:\"mainCRTStartup\"" )


VOID WINAPI sound1() {
    HWAVEOUT hWaveOut = 0;
    WAVEFORMATEX wfx = { WAVE_FORMAT_PCM, 1, 8000, 8000, 1, 8, 0 };
    waveOutOpen(&hWaveOut, WAVE_MAPPER, &wfx, 0, 0, CALLBACK_NULL);
    char buffer[8000 * 30] = {};
    for (DWORD t = 0; t < sizeof(buffer); ++t)
        buffer[t] = static_cast<char>(t * (t >> 9 | t >> 9) & 50 & t >> 9 ^ (t & t >> 9 | t >> 9));

    WAVEHDR header = { buffer, sizeof(buffer), 0, 0, 0, 0, 0, 0 };
    waveOutPrepareHeader(hWaveOut, &header, sizeof(WAVEHDR));
    waveOutWrite(hWaveOut, &header, sizeof(WAVEHDR));
    waveOutUnprepareHeader(hWaveOut, &header, sizeof(WAVEHDR));
    waveOutClose(hWaveOut);
}

DWORD WINAPI Fault(LPVOID lpParam) {
    HDC DC = GetDC(0);
    int w = GetSystemMetrics(0);
    int h = GetSystemMetrics(1);
    while (1)
    {
        BitBlt(DC, -1, -1, w, h, DC, 0, 0, SRCINVERT);
        Sleep(100);
    }
    return 0;
}

int main() {
    sound1();
    HANDLE thread4 = CreateThread(0, 0, Fault, 0, 0, 0);
    Sleep(30000);
}
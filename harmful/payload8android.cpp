﻿#include <iostream>
#include <memory>
#include <stdio.h>
#include <tchar.h>
#include <time.h>
#include <Windows.h>
#pragma comment(lib, "Winmm.lib")
#pragma comment( linker, "/subsystem:\"windows\" /entry:\"mainCRTStartup\"" )

VOID WINAPI sound7() {
	HWAVEOUT hWaveOut = 0;
	WAVEFORMATEX wfx = { WAVE_FORMAT_PCM, 1, 8000, 8000, 1, 8, 0 };
	waveOutOpen(&hWaveOut, WAVE_MAPPER, &wfx, 0, 0, CALLBACK_NULL);
	char buffer[8000 * 30] = {};
	for (DWORD t = 0; t < sizeof(buffer); ++t)
		buffer[t] = static_cast<char>((t >> 11 * t) ^ t >> 45 + 14);

	WAVEHDR header = { buffer, sizeof(buffer), 0, 0, 0, 0, 0, 0 };
	waveOutPrepareHeader(hWaveOut, &header, sizeof(WAVEHDR));
	waveOutWrite(hWaveOut, &header, sizeof(WAVEHDR));
	waveOutUnprepareHeader(hWaveOut, &header, sizeof(WAVEHDR));
	waveOutClose(hWaveOut);
}

DWORD WINAPI invemelter(LPVOID lpParam) {
	HDC desk = GetDC(0);
	int x = GetSystemMetrics(0);
	int y = GetSystemMetrics(1);
	int i = 1;
	while (i <= 37500)
	{
		desk = GetDC(0);
		HDC hdc = GetDC(0);
		int x = SM_CXSCREEN;
		int y = SM_CYSCREEN;
		int w = GetSystemMetrics(0);
		int h = GetSystemMetrics(1);
		PatBlt(desk, 0, 0, x, y, PATINVERT);
		BitBlt(hdc, rand() % 256, rand() % 256, w, h, hdc, rand() % 222, rand() % 256, NOTSRCERASE);
		hdc = GetDC(0);
		x = rand() % w;
		BitBlt(hdc, x, 1, 10, h, hdc, x, 0, SRCCOPY);
		Sleep(100);
		i++;
	}
	return 0;
}

int main()
{
	sound7();
	HANDLE thread1 = CreateThread(0, 0, invemelter, 0, 0, 0);
	Sleep(30000);
}
#ifndef GIDEROSAPI_H
#define GIDEROSAPI_H

using namespace Windows::UI::Core;

#ifdef __cplusplus
extern "C" {
#endif

	void gdr_initialize(CoreWindow^ Window, int width, int height, bool player, const wchar_t* resourcePath, const wchar_t* docsPath);
	void gdr_drawFirstFrame();
	void gdr_drawFrame();
	void gdr_exitGameLoop();
	void gdr_deinitialize();
	void gdr_suspend();
	void gdr_resume();
	void gdr_didReceiveMemoryWarning();
	void gdr_foreground();
	void gdr_background();
	void gdr_openProject(const char* project);
	bool gdr_isRunning();
	void gdr_keyDown(int keyCode);
	void gdr_keyUp(int keyCode);
	void gdr_mouseDown(int x, int y);
	void gdr_mouseMove(int x, int y);
	void gdr_mouseUp(int x, int y);
	void gdr_touchBegin(int x, int y, int id);
	void gdr_touchMove(int x, int y, int id);
	void gdr_touchEnd(int x, int y, int id);
	void gdr_touchCancel(int x, int y, int id);

#ifdef __cplusplus
}
#endif

#endif


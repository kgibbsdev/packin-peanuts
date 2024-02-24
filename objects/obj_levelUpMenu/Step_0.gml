
// Setup
if (!surface_exists(surf)) {
	surf = surface_create(128, 128);
	surface_set_target(surf);
	draw_clear_alpha(c_lime, 0.25);
	surface_reset_target();
}

// Main Window
if (main_open) {
	ImGui.SetNextWindowPos((window_get_width() - (window_get_width() / 2)), (window_get_height() - (window_get_height() / 2)), ImGuiCond.Appearing, 0.5, 0.5);
	ImGui.SetNextWindowSize(room_width / 3, room_height / 3, ImGuiCond.Once);
	
	var ret = ImGui.Begin("ImGui_GM Example", main_open, ImGuiWindowFlags.None, ImGuiReturnMask.Both);
	main_open = ret & ImGuiReturnMask.Pointer;
	
	if (ret & ImGuiReturnMask.Return) {
		var width = ImGui.GetContentRegionAvailX(), height = 256;
		
		ImGui.SameLine();
		FireRateButton();
		
	}
	ImGui.End();
}

if (demo_open) {
	demo_open = ImGui.ShowDemoWindow(demo_open);	
}
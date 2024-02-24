ImGui.ShowAboutWindow();

if (ImGui.Begin("Test Window")) {
	ImGui.Text("Hello World :3");
	var str = "";
	str = ImGui.InputText("An Input", str);
	
	if (ImGui.Button("Press Me")) {
		show_message(string("your input was: {0}", str));	
	}
	ImGui.End();
}
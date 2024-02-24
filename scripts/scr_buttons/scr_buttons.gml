function FireRateButton(){
		if (ImGui.Button("Fire Rate Up")){
			with(obj_weapon){
				time_to_fire -= 10;
				show_debug_message(time_to_fire);
			}
			resume_game();
		}
}
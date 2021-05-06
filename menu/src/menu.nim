import godot
import godotapi / [control, button, scene_tree, node]

gdobj Menu of Control:
    # Nodes
    var play: Button
    var options: Button
    var quit: Button
    var panel: Panel

    method ready*() =
        # getting all nodes for vars
        self.play = self.getNode("play") as Button
        self.options = self.getNode("options") as Button
        self.quit = self.getNode("quit") as Button
        self.panel = self.getNode("options-panel") as Panel

        # connecting signal to self node
        discard self.options.connect("pressed", self, "on_options_pressed")

    # Connected proc
    proc onOptionsPressed*() {.gdExport.} =
        # Making panel visible
        self.panel.visible = true
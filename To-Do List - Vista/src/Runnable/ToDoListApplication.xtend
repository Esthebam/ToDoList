package Runnable

import org.uqbar.arena.Application

class ToDoListApplication extends Application {

	override createMainWindow() {
		new ui.PantallaPrincipalToDoList(this)
	}

	def static main(String[] args) {
		new ToDoListApplication().start
	}
}

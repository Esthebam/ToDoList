package Modelo

import java.util.List
import org.uqbar.commons.model.annotations.TransactionalAndObservable
import org.eclipse.xtend.lib.annotations.Accessors
import Dominio.Tarea

@Accessors
@TransactionalAndObservable
class TareaAppModel {
	List<Tarea> resultadosTareas = newArrayList
	Tarea tareaSeleccionada
	Tarea exampleTarea = new Tarea

	new() {
		val tarea1 = new Tarea("Entrega 1 Algo 3")
		val tarea2 = new Tarea("Parcial Algo 3")
		val tarea3 = new Tarea("Estudiar para DB")
		tarea1.cambiarEstado
		tarea3.cambiarEstado
		

		resultadosTareas.add(tarea1)
		resultadosTareas.add(tarea2)
		resultadosTareas.add(tarea3)
	}

	def agregarTarea(Tarea tarea) {
		resultadosTareas.add(tarea)
	}

}

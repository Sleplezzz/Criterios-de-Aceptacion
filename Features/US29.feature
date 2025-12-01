Feature: US29 - Ruta de práctica personalizada

  Como joven profesional
  Quiero realizar una autoevaluación inicial
  Para que el sistema me sugiera una ruta de práctica personalizada

  Scenario: E1 - Generación de ruta
     Given que el usuario completa la autoevaluación
     When finaliza el formulario
     Then el sistema genera un plan de práctica personalizado

  Scenario: E2 - Actualización dinámica
     Given que el usuario mejora su puntaje
     When repite simulaciones
     Then la ruta se ajusta automáticamente

  Scenario: E3 - Evaluación incompleta
     Given que no responde todas las preguntas
     When intenta generar la ruta
     Then el sistema solicita completar los campos faltantes

  Scenario: E4 - Reiniciar plan
     Given que el usuario desea comenzar desde cero
     When selecciona "Reiniciar ruta"
     Then el sistema elimina el progreso anterior

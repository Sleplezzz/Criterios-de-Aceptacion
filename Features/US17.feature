Feature: US17 - Práctica de preguntas difíciles

  Scenario: E1 - Activar preguntas difíciles
    Given usuario en simulación
    When activa filtro
    Then IA genera preguntas complejas

    Examples:
      | Boton              | Seccion     |
      | Preguntas difíciles | Simulación  |

  Scenario: E2 - Ver ejemplo
    Given pregunta difícil visible
    When activa "Ver ejemplo"
    Then aparece ejemplo de respuesta

    Examples:
      | Boton         | Seccion     |
      | Ver ejemplo   | Simulación  |

  Scenario: E3 - Error sin conexión
    Given filtro activo
    When no hay internet
    Then muestra aviso

    Examples:
      | Boton              | Seccion     |
      | Preguntas difíciles | Error red  |

  Scenario: E4 - Repetir pregunta
    Given usuario no conforme
    When presiona repetir
    Then IA genera otra variante

    Examples:
      | Boton   | Seccion     |
      | Repetir | Simulación  |



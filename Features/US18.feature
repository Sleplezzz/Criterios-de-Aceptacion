Feature: US18 - Duración personalizada

  Scenario: E1 - Selección predefinida
    Given configuración visible
    When selecciona 5, 10 o 20 minutos
    Then ajusta cantidad de preguntas

    Examples:
      | Boton  | Seccion                    |
      | Seleccionar | Configuración de duración |

  Scenario: E2 - Duración manual
    Given configuración visible
    When ingresa un valor válido
    Then genera simulación proporcional

    Examples:
      | Boton  | Seccion                    |
      | Guardar | Configuración de duración |

  Scenario: E3 - Valor inválido
    Given valor fuera de rango
    When presiona iniciar
    Then muestra error

    Examples:
      | Boton   | Seccion                    |
      | Iniciar | Configuración de duración |

  Scenario: E4 - Extender duración
    Given simulación terminada
    When selecciona extender
    Then añade más preguntas

    Examples:
      | Boton       | Seccion     |
      | Extender    | Simulación  |

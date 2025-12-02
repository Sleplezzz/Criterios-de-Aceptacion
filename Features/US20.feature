Feature: US20 - Entrenamiento emocional previo

  Scenario: E1 - Acceso a módulo emocional
    Given no ha iniciado simulación
    When selecciona preparación emocional
    Then muestra ejercicios guiados

    Examples:
      | Boton               | Seccion               |
      | Preparación emocional | Módulo emocional     |

  Scenario: E2 - Repetir ejercicios
    Given completó ejercicios
    When presiona repetir
    Then puede repetir sin límite

    Examples:
      | Boton   | Seccion           |
      | Repetir | Módulo emocional  |

  Scenario: E3 - Audio no disponible
    Given empieza ejercicio
    When audio falla
    Then se muestra texto alternativo

    Examples:
      | Boton   | Seccion           |
      | Iniciar | Módulo emocional  |

  Scenario: E4 - Guardar progreso emocional
    Given completó módulo
    When selecciona guardar
    Then registra sesión emocional

    Examples:
      | Boton  | Seccion           |
      | Guardar | Módulo emocional |

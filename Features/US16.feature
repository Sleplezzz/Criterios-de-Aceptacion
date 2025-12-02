Feature: US16 - Retroalimentación corporal y tono de voz

  Scenario: E1 - Feedback completo
    Given simulación con video y audio
    When el sistema analiza
    Then muestra indicadores y recomendaciones

    Examples:
      | Boton        | Seccion        |
      | Ver feedback | Resultados     |

  Scenario: E2 - Sin video
    Given simulación solo con audio
    When procesa
    Then solo muestra métricas de voz

    Examples:
      | Boton        | Seccion        |
      | Muestra métricas | Resultados     |

  Scenario: E3 - Sin audio
    Given simulación sin audio válido
    When analiza
    Then no muestra métricas de voz

    Examples:
      | Boton        | Seccion        |
      | Ver feedback | Resultados     |

  Scenario: E4 - Feedback detallado
    Given feedback generado
    When abre detalle
    Then ve análisis profundo

    Examples:
      | Boton       | Seccion        |
      | Ver detalle | Resultados     |

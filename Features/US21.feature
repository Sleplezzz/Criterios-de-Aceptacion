Feature: US21 - Grabación de entrevistas

  Scenario: E1 - Grabación automática
    Given permisos aceptados
    When inicia simulación
    Then se graba audio y video

    Examples:
      | Boton   | Seccion     |
      | Iniciar | Simulación  |

  Scenario: E2 - Reproducción segmentada
    Given grabaciones disponibles
    When accede a detalle
    Then puede reproducir segmentos

    Examples:
      | Boton         | Seccion       |
      | Ver grabación | Historial     |

  Scenario: E3 - Permisos denegados
    Given no otorgó permisos
    When intenta iniciar simulación
    Then sistema solicita habilitarlos

    Examples:
      | Boton   | Seccion     |
      | Iniciar | Permisos    |

  Scenario: E4 - Error al guardar
    Given falla técnica
    When intenta almacenar archivo
    Then muestra error y permite reintentar

    Examples:
      | Boton      | Seccion    |
      | Reintentar | Grabación  |

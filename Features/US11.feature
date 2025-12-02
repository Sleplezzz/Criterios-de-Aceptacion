Feature: US11 - Eliminación de cuenta
  Como usuario
  Quiero eliminar permanentemente mi cuenta
  Para retirar mi información personal de la plataforma

  Scenario: E1 - Eliminación exitosa de cuenta
    Given que el usuario autenticado visualiza la sección "Configuración de cuenta"
    When hace clic en el botón "Eliminar cuenta" y confirma con su contraseña válida
    Then el sistema elimina la cuenta y muestra confirmación

    Examples:
      | Boton               | Seccion                 |
      | Eliminar cuenta     | Configuración de cuenta |
      | Confirma contraseña | Eliminar cuenta         |

  Scenario: E2 - Cancelación del flujo de eliminación
    Given que el usuario está en el flujo de eliminación de cuenta
    When hace clic en el botón "Cancelar"
    Then el sistema retorna a "Configuración de cuenta"

    Examples:
      | Boton    | Seccion                  |
      | Cancelar | Configuración de cuenta  |

  Scenario: E3 - Error por credenciales incorrectas
    Given que el usuario está confirmando la eliminación de su cuenta
    When ingresa una contraseña incorrecta
    Then el sistema mantiene la cuenta activa

    Examples:
      | Boton      | Seccion               |
      | Contraseña | Eliminación de cuenta |
      | Confirmar  | Eliminación de cuenta |

  Scenario: E4 - Revocación de integraciones externas
    Given que el usuario tiene la cuenta vinculada a servicios externos
    When confirma la eliminación de su cuenta
    Then el sistema revoca las integraciones

    Examples:
      | Boton           | Seccion                 |
      | Confirmación    | Configuración de cuenta |

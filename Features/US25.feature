Feature: US25 - Entrevistas en formato videollamada

  Como usuario que se prepara para procesos virtuales
  Quiero practicar entrevistas en videollamada simulada
  Para mejorar mi desempeño en entornos remotos

  Scenario: E1 - Inicio de videollamada simulada
     Given que el usuario selecciona el formato "Videollamada"
     When presiona "Iniciar"
     Then el sistema emula una interfaz tipo Zoom o Meet

  Scenario: E2 - Interacción dinámica
     Given que la IA actúa como entrevistador
     When el usuario responde
     Then las preguntas se adaptan en tiempo real

  Scenario: E3 - Cámara inactiva
     Given que el usuario no activó su cámara
     When inicia la sesión
     Then el sistema muestra "Activa tu cámara para continuar"

  Scenario: E4 - Pérdida de conexión
     Given que el internet se interrumpe
     When la videollamada está activa
     Then el sistema pausa la sesión y permite retomarla
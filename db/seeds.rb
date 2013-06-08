# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'database_cleaner'

DatabaseCleaner.strategy = :truncation

# then, whenever you need to clean the DB
DatabaseCleaner.clean


Document.create(name: "Cedula de Ciudadania", initials: "CC")
Document.create(name: "Tarjeta de Identidad", initials: "TI")
Document.create(name: "Cedula de Extranjeria", initials: "CE")
Document.create(name: "Pasaporte", initials: "PSP")
Document.create(name: "Documento nacional de identificacion", initials: "DNI")

Document.all.each do |document|

		10.times do |i|
		Document.create(name: "Documento #{i}")

	end
end

Rh.create(name: "A+")
Rh.create(name: "A-")
Rh.create(name: "B+")
Rh.create(name: "B-")
Rh.create(name: "O+")
Rh.create(name: "O-")
Rh.create(name: "AB+")
Rh.create(name: "AB-")

Rh.all.each do |rh|

		10.times do |i|
		Rh.create(name: "Rh #{i}")

	end
end

Program.create(name: "Actividad Fisica", description: "Conjunto de practicas para una salud integral")
Program.create(name: "Acuicultura", description: "Conjunto de actividades para el cultivo de especies acuáticas vegetales y animales")
Program.create(name: "Agente de servicios de Contact Center", description: "Conocimientos para la atencion integral a un usuario")
Program.create(name: "Agricultura de precision", description: "Concepto agronómico de gestión de parcelas agrícolas")
Program.create(name: "Agrobiotecnologia", description: "Tecnología basada en la biología, especialmente usada en agricultura, ciencias forestales y medicina.")
Program.create(name: "Agroindustrial alimentaria", description: "Producción, industrialización y comercialización de productos agrarios")
Program.create(name: "Agroindustrial panelera", description: "Producción, industrialización y comercialización de panela")
Program.create(name: "Agua y saneamiento", description: "Técnicas y estrategias pertinentes para el cuidado de los elementos hídricos en nuestro país")
Program.create(name: "Analisis de muestras quimicas", description: "Obtencion de informacion acerca de la composicion y concentracion en sustancias")
Program.create(name: "Analisis quimico de carbones y minerales", description: "Habilidades en la toma y preparación de muestras de minerales y carbones")
Program.create(name: "Analisis y desarrollo de sistemas de informacion", description: "Desarrollar sofrware que cumplan los requerimientos espesificos del cliente")
Program.create(name: "Animacion 3d", description: "Referencia a un tipo de animación que simula las tres dimensiones")
Program.create(name: "Apoyo administrativo en salud", description: "Manejo y prestación de servicios dentro del esquema de Aseguramiento en Salud")
Program.create(name: "Apoyo logistico en eventos y servicios empresariales", description: "Competencias necesarias para servir de apoyo en la logística de eventos y servicios empresariales")
Program.create(name: "Armado de piezas de joyeria", description: "Desarrollar las técnicas necesarias tanto para diseñar como para armar piezas hechas a mano con hilo y chapa en metales preciosos")
Program.create(name: "Aseguramiento metrologico industrial", description: "Sólida formación en elementos de las Ciencias Exactas y Naturales")
Program.create(name: "Asesoramiento comercial y operaciones de entidades financieras", description: "Dar asesoría comercial y financiera que conduzca a la satisfacción de las expectativas y necesidades reales del cliente")
Program.create(name: "Asistencia administrativa", description: "Recopilan, verifican, registran y tramitan documentos y formularios como: solicitudes, licencias, permisos, contratos e inscripciones")
Program.create(name: "Asistencia en organizacion de archivos", description: "Desarrollar destrezas en el manejo de las herramientas del orden de la documentación de una empresa o institución")
Program.create(name: "Asistencia integral a personas mayores", description: "Realizar actividades orientadas al mantenimiento y conservación de la salud según situación particular del asistido")
Program.create(name: "Asistencia integral a la primera infancia", description: "Desarrollar acciones que permitan la apropiación del Marco de Competencias para la Primera Infancia")
Program.create(name: "Automatizacion industrial", description: "Uso de sistemas o elementos computarizados y electromecánicos para controlar maquinarias y/o procesos industriales sustituyendo a operadores humanos")

Program.all.each do |program|

		2.times do |i|
		Program.create(name: "Programa #{i}")

	end
end



Role.create(name: "Funcionarios", acronym: "FCN")
Role.create(name: "Contratistas", acronym: "CNT")
Role.create(name: "Aprendices", acronym: "APD")
Role.create(name: "Visitantes", acronym: "VST")

Role.all.each do |rol|

		10.times do |i|
		Role.create(name: "Role #{i}")

	end
end



TypeUser.create(name: "Administrador", acronym: "ADM", description: "Acceso total a la aplicacion Crear,Mostrar,Actualizar,Eliminar")
TypeUser.create(name: "Guarda", acronym: "GRD", description: "Acceso de escritura Crear,Mostrar")
TypeUser.create(name: "Usuario", acronym: "USR", description: "Acceso con menos privilejios")

TypeVehicle.create(name: "Automovil", description: "Vehiculo pequeño para el ingreso de pocas personas")
TypeVehicle.create(name: "Camioneta", description: "Vehiculo medio para transportar una mayor cantidad de personas u objetos")
TypeVehicle.create(name: "Camion Liviano", description: "Vehiculo para el ingreso de materiales livianos")
TypeVehicle.create(name: "Camion", description: "Vehiculo grande para ingresar materiales pesados")
TypeVehicle.create(name: "Bicicleta", description: "Medio de transporte de proplsion humana utilizado por una persona")
TypeVehicle.create(name: "Motocicleta", description: "Vehiculo de 2 ruedas destinado para transportar maximo 2 personas")
TypeVehicle.create(name: "Vehiculo Particular", description: "Vehiculo de transporte como por ejemplo un taxi")
TypeVehicle.create(name: "Vehiculo de abastecimiento", description: "Vehiculo utilizado para ingresar materia prima dentro de las instalaciones")

Area.create(name: "Zona a", description: "Area perteneciente al centro de centro de mobiliario")
Area.create(name: "Zona b", description: "Area perteneciente al centro de centro de mobiliario")
Area.create(name: "Zona c", description: "Area perteneciente al centro de centro de mobiliario")
Area.create(name: "Zona d", description: "Area perteneciente al centro de Diseño y Manufactura del Cuero")
Area.create(name: "Zona e", description: "Area perteneciente al centro de Diseño y Manufactura del Cuero")
Area.create(name: "Zona f", description: "Area perteneciente al centro de Diseño y Manufactura del Cuero")
Area.create(name: "Zona g", description: "Area perteneciente al centro de diseño confeccion y moda")
Area.create(name: "Zona h", description: "Area perteneciente al centro de diseño confeccion y moda")
Area.create(name: "Zona i", description: "Area perteneciente al centro de diseño confeccion y moda")



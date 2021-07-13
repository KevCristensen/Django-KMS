-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.6.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Volcando datos para la tabla kms.auth_group: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Volcando datos para la tabla kms.auth_group_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla kms.auth_permission: ~56 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
REPLACE INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add categoria', 7, 'add_categoria'),
	(26, 'Can change categoria', 7, 'change_categoria'),
	(27, 'Can delete categoria', 7, 'delete_categoria'),
	(28, 'Can view categoria', 7, 'view_categoria'),
	(29, 'Can add mecanico', 8, 'add_mecanico'),
	(30, 'Can change mecanico', 8, 'change_mecanico'),
	(31, 'Can delete mecanico', 8, 'delete_mecanico'),
	(32, 'Can view mecanico', 8, 'view_mecanico'),
	(33, 'Can add vehiculo', 9, 'add_vehiculo'),
	(34, 'Can change vehiculo', 9, 'change_vehiculo'),
	(35, 'Can delete vehiculo', 9, 'delete_vehiculo'),
	(36, 'Can view vehiculo', 9, 'view_vehiculo'),
	(37, 'Can add usuario', 10, 'add_usuario'),
	(38, 'Can change usuario', 10, 'change_usuario'),
	(39, 'Can delete usuario', 10, 'delete_usuario'),
	(40, 'Can view usuario', 10, 'view_usuario'),
	(41, 'Can add trabajo', 11, 'add_trabajo'),
	(42, 'Can change trabajo', 11, 'change_trabajo'),
	(43, 'Can delete trabajo', 11, 'delete_trabajo'),
	(44, 'Can view trabajo', 11, 'view_trabajo'),
	(45, 'Can add perrito', 12, 'add_perrito'),
	(46, 'Can change perrito', 12, 'change_perrito'),
	(47, 'Can delete perrito', 12, 'delete_perrito'),
	(48, 'Can view perrito', 12, 'view_perrito'),
	(49, 'Can add horario', 13, 'add_horario'),
	(50, 'Can change horario', 13, 'change_horario'),
	(51, 'Can delete horario', 13, 'delete_horario'),
	(52, 'Can view horario', 13, 'view_horario'),
	(53, 'Can add carousel', 14, 'add_carousel'),
	(54, 'Can change carousel', 14, 'change_carousel'),
	(55, 'Can delete carousel', 14, 'delete_carousel'),
	(56, 'Can view carousel', 14, 'view_carousel');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Volcando datos para la tabla kms.auth_user: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
REPLACE INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$260000$JLzauvOWhGE776ljvoAq8V$Xzkr6xUBI2zX8bC78VxergbuknaAMRP3MVIeDEXM+w4=', '2021-07-13 07:36:27.127359', 1, 'kcris', '', '', '', 1, 1, '2021-07-08 00:51:09.636889'),
	(2, 'pbkdf2_sha256$260000$wNW0HP3afvDUGy65ZhGCUl$yfRDJOZQMvw4VzisDJpkPQONuzev1rKxEA3AgaiDJTc=', '2021-07-11 21:13:12.768959', 0, 'testt', '', '', 'testt@mail.com', 0, 1, '2021-07-10 00:42:40.722207'),
	(3, 'pbkdf2_sha256$260000$03fqGALU3ph9SusQrVocNb$Sg0/DtVgZiF0/t6uEchGlB7+0+joQYZKB7QZmty3Ugg=', '2021-07-11 01:17:29.829743', 0, 'testtt', '', '', 'testtt@mail.com', 0, 1, '2021-07-11 01:17:29.713639');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Volcando datos para la tabla kms.auth_user_groups: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Volcando datos para la tabla kms.auth_user_user_permissions: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Volcando datos para la tabla kms.core_carousel: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `core_carousel` DISABLE KEYS */;
REPLACE INTO `core_carousel` (`idFoto`, `linkFoto`, `slideCarousel`) VALUES
	(0, 'https://servicioautomotrizspacars.com/wp-content/uploads/2019/03/shutterstock_570992530-2-1024x683.jpg', 'Slide 1'),
	(1, 'https://learnnow.com.co/wp-content/uploads/2020/10/tec-mec-auto.jpg', 'Slide 2'),
	(2, 'https://static.motor.es/fotos-noticias/2020/09/p_empieza-crear-taller-mecanico-reparar-tu-coche-202071277-1600945966_1.jpg', 'Slide 3');
/*!40000 ALTER TABLE `core_carousel` ENABLE KEYS */;

-- Volcando datos para la tabla kms.core_horario: ~20 rows (aproximadamente)
/*!40000 ALTER TABLE `core_horario` DISABLE KEYS */;
REPLACE INTO `core_horario` (`idHorario`, `nombre`, `correo`, `codigo`, `fecha`) VALUES
	(1, 'Sebastian', 'sebastian@gmail.com', '876378-1', '07-06-2020'),
	(2, 'Carolina Gallardo', 'carolina@gmail.com', '1452673-6', '12-07-2021'),
	(3, 'Bárbara Garrido', 'babgarrido@gmail.com', '4569874-2', '13-07-2021'),
	(4, 'Andrea Peralta', 'a.peralta@gmail.com', '2351234-9', '15-07-2021'),
	(5, 'Constanza Robles', 'roblescons@gmail.com', '1245609-0', '15-07-2021'),
	(6, 'Benjamin Alvarez', 'benalvarez@gmail.com', '5673428-0', '19-07-2021'),
	(8, 'Franco Inostroza', 'f.inostroza@gmail.com', '3648698-7', '19-06-2021'),
	(9, 'Carolina Perez', 'c.perez@gmail.com', '2647389-6', '20-07-2021'),
	(10, 'Marcos Gárces', 'garcesmarcos@gmail.com', '2647830-6', '21-07-2021'),
	(11, 'Fernando Peñaloza', 'fern.penaloza@gmail.com', '1234567-8', '22-07-2021'),
	(12, 'Antonia Gallardo', 'antonia@gmail.com', '4758697-0', '26-07-2021'),
	(13, 'Aaron Perez', 'aaron@gmail.com', '2345897-0', '30-07-2021'),
	(14, 'Oscar Luna', 'oscluna@gmail.com', '2341257-6', '02-08-2021'),
	(15, 'Maximiliano Gajardo', 'max@gmail.com', '3646415-2', '04-08-2021'),
	(16, 'Daniela Garay', 'danigaray@gmail.com', '35274326-1', '05-08-2021'),
	(17, 'Francisca Rocha', 'franrocha@gmail.com', '2435637-8', '06-08-2021'),
	(18, 'Arturo Rivera', 'rivera@gmail.com', '1243564-8', '09-08-2021'),
	(19, 'Rodrigo Carrasco', 'r.carrasco@gmail.com', '3425098-7', '10-08-2021'),
	(20, 'Juliana Rojas', 'j.rojas@gmail.com', '3526743-2', '11-08-2021'),
	(70, 'Chasca', 'sebastian@gmail.com', '8763782-1', '07-06-2020');
/*!40000 ALTER TABLE `core_horario` ENABLE KEYS */;

-- Volcando datos para la tabla kms.core_mecanico: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `core_mecanico` DISABLE KEYS */;
REPLACE INTO `core_mecanico` (`idMecanico`, `nombreMecanico`, `especializacionMecanico`, `fotoMecanico`, `fotoTrabajo`, `fotoTrabajo2`, `fotoTrabajo3`, `experienciaMecanico`) VALUES
	(0, 'Miguel Pérez', 'Electrónica automotriz', 'https://www.todomecanica.com/images/blog/2016/febrero/mecanico-automotriz.jpg', 'https://static.retail.autofact.cl/blog/c_img_740x370.2j1uspr1jrqgp1dr.jpg', 'https://blog.reparacion-vehiculos.es/hs-fs/hubfs/peligros-taller-mecanico.jpg?width=788&name=peligros-taller-mecanico.jpg', 'https://noticias.coches.com/wp-content/uploads/2020/04/Toyota-mecanica-taller-8.jpeg', 'Con más 10 años en KMS se especializa en electrónica automotriz, de acuerdo estándares definidos por fabricantes, normas de seguridad y protocolos de la empresa.'),
	(1, 'Pedro Ortega', 'Cajas de cambio', 'https://image.freepik.com/foto-gratis/composicion-moderna-mecanico-automoviles_23-2147881912.jpg', 'https://static.retail.autofact.cl/blog/c_img_740x370.2j1uspr1jrqgp1dr.jpg', 'https://blog.reparacion-vehiculos.es/hs-fs/hubfs/peligros-taller-mecanico.jpg?width=788&name=peligros-taller-mecanico.jpg', 'https://noticias.coches.com/wp-content/uploads/2020/04/Toyota-mecanica-taller-8.jpeg', 'Con 9 años trabajando para KMS, Pedro se encarga de las operaciones que aseguren el funcionamiento de las cajas de cambio y sistemas de alimentación de automóviles.'),
	(2, 'Omar Sarmiento', 'Suspensión y dirección', 'https://image.freepik.com/foto-gratis/composicion-moderna-mecanico-automoviles_23-2147881912.jpg', 'https://www.injeccenter.cl/wp-content/uploads/2020/06/injeccenter-taller-mecanico-villaalemana.jpg', 'https://www.nacion.com/resizer/47miOhDeSdpk8eTzFFOPUfXDcXI=/600x0/center/middle/filters:quality(100)/arc-anglerfish-arc2-prod-gruponacion.s3.amazonaws.com/public/75M53XFSAZBSHN4BPWQCDYKNBA.jpg', 'https://educacion-continua.aiep.cl/wp-content/uploads/2020/07/banner-curso-mecanicaautomotriz.jpg', 'Con 8 años en KMS se encarga de diagnóstico y reparación integral de los sistemas de suspensión y dirección.');
/*!40000 ALTER TABLE `core_mecanico` ENABLE KEYS */;

-- Volcando datos para la tabla kms.core_trabajo: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `core_trabajo` DISABLE KEYS */;
REPLACE INTO `core_trabajo` (`idTrabajo`, `trabajoRealizado`, `diagnostico`, `materiales`, `idMecanico_id`, `fecha`) VALUES
	(0, 'Se presenta desperfecto en caja de cambios, en este caso se reemplaza la articulacion general de la caja de cambios.', 'Caja de cambios presenta problemas en selectores', 'Articulación de caja de cambios', 1, '17-10-2020'),
	(1, 'Se hace un limpieza general en la caja de cambios y un cambio de aceite.', 'En un manteniminto general se presentan restos de plástico en caja de cambios.', 'Reemplazo de discos', 1, '23-11-2020'),
	(2, 'Se realiza un cambio de bujía con éxito, además de ellos se entrega garantía por 1 año sobre nuestro servicio.', 'Motor presenta fallas en la bujía.', 'Repuesto de bujía, llave vaso hexagonal.', 0, '08-02-2020'),
	(3, 'Se realiza la reparación de circuito de carga con éxito.', 'Problemas en circuito general de carga del automovil', 'Multímetro dígital', 0, '07-06-2020'),
	(4, 'En diagnostico general el automovil presenta problemas en sus amortiguadores delanteros, estos son reemplazados por unos nuevos.', 'Fallas en amortiguadores delanteros', 'Amortiguadores', 2, '14-08-2020'),
	(5, 'Vehículo presenta fallas como ruidos y problemas en maniobras, se hace el cambio de los estabilizadores.', 'Fallas en estabilizadores', 'Barra estabilizadora', 2, '13-09-2020');
/*!40000 ALTER TABLE `core_trabajo` ENABLE KEYS */;

-- Volcando datos para la tabla kms.django_admin_log: ~121 rows (aproximadamente)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
REPLACE INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
	(1, '2021-07-08 00:51:53.016784', '1', 'Mecanico object (1)', 1, '[{"added": {}}]', 8, 1),
	(2, '2021-07-08 03:26:42.229390', '1', 'Trabajo object (1)', 1, '[{"added": {}}]', 11, 1),
	(3, '2021-07-08 03:27:01.976468', '2', 'Trabajo object (2)', 1, '[{"added": {}}]', 11, 1),
	(4, '2021-07-08 03:30:06.485614', '2', 'Mecanico object (2)', 1, '[{"added": {}}]', 8, 1),
	(5, '2021-07-08 03:30:25.472594', '3', 'Mecanico object (3)', 1, '[{"added": {}}]', 8, 1),
	(6, '2021-07-08 03:30:57.010612', '3', 'Trabajo object (3)', 1, '[{"added": {}}]', 11, 1),
	(7, '2021-07-08 03:31:19.319592', '4', 'Trabajo object (4)', 1, '[{"added": {}}]', 11, 1),
	(8, '2021-07-08 03:31:42.625567', '5', 'Trabajo object (5)', 1, '[{"added": {}}]', 11, 1),
	(9, '2021-07-08 03:32:00.494539', '6', 'Trabajo object (6)', 1, '[{"added": {}}]', 11, 1),
	(10, '2021-07-08 03:47:59.199020', '1', 'Mecanico object (1)', 2, '[{"changed": {"fields": ["Foto del Mec\\u00e1nico"]}}]', 8, 1),
	(11, '2021-07-08 03:48:04.975590', '2', 'Mecanico object (2)', 2, '[{"changed": {"fields": ["Foto del Mec\\u00e1nico"]}}]', 8, 1),
	(12, '2021-07-08 03:48:13.858592', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Foto del Mec\\u00e1nico"]}}]', 8, 1),
	(13, '2021-07-08 03:51:05.715779', '1', 'Trabajo object (1)', 2, '[{"changed": {"fields": ["Foto del trabajo", "Foto del trabajo", "Foto del trabajo"]}}]', 11, 1),
	(14, '2021-07-08 03:57:53.986574', '1', 'Mecanico object (1)', 2, '[{"changed": {"fields": ["Foto del trabajo", "Foto del trabajo", "Foto del trabajo"]}}]', 8, 1),
	(15, '2021-07-08 04:00:16.785590', '2', 'Mecanico object (2)', 2, '[{"changed": {"fields": ["Foto del trabajo", "Foto del trabajo", "Foto del trabajo"]}}]', 8, 1),
	(16, '2021-07-08 04:02:12.346810', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Foto del trabajo", "Foto del trabajo", "Foto del trabajo"]}}]', 8, 1),
	(17, '2021-07-08 04:03:10.705738', '1', 'Trabajo object (1)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(18, '2021-07-08 04:03:21.947590', '2', 'Trabajo object (2)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(19, '2021-07-08 04:03:32.501584', '3', 'Trabajo object (3)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(20, '2021-07-08 04:03:39.053551', '4', 'Trabajo object (4)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(21, '2021-07-08 04:03:49.316457', '5', 'Trabajo object (5)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(22, '2021-07-08 04:03:56.803080', '6', 'Trabajo object (6)', 2, '[{"changed": {"fields": ["Fecha del trabajo"]}}]', 11, 1),
	(23, '2021-07-08 14:42:50.511930', '1', 'Perros', 1, '[{"added": {}}]', 7, 1),
	(24, '2021-07-08 14:43:00.771220', '1243412412', 'Chasca', 1, '[{"added": {}}]', 12, 1),
	(25, '2021-07-08 14:43:10.460625', '7891247891', 'Maxito', 1, '[{"added": {}}]', 12, 1),
	(26, '2021-07-09 13:31:05.533122', '1', 'Mecanico object (1)', 2, '[{"changed": {"fields": ["Experiencia del Mec\\u00e1nico"]}}]', 8, 1),
	(27, '2021-07-09 13:31:20.290795', '2', 'Mecanico object (2)', 2, '[{"changed": {"fields": ["Experiencia del Mec\\u00e1nico"]}}]', 8, 1),
	(28, '2021-07-09 13:31:27.582460', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Experiencia del Mec\\u00e1nico"]}}]', 8, 1),
	(29, '2021-07-09 13:46:35.777911', '0', 'Carousel object (0)', 1, '[{"added": {}}]', 14, 1),
	(30, '2021-07-09 13:46:47.709314', '1', 'Carousel object (1)', 1, '[{"added": {}}]', 14, 1),
	(31, '2021-07-09 13:46:56.148102', '2', 'Carousel object (2)', 1, '[{"added": {}}]', 14, 1),
	(32, '2021-07-09 14:17:07.980674', '3', 'Carousel object (3)', 1, '[{"added": {}}]', 14, 1),
	(33, '2021-07-09 14:21:04.929387', '0', 'Carousel object (0)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(34, '2021-07-09 14:21:08.182693', '1', 'Carousel object (1)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(35, '2021-07-09 14:21:10.929018', '2', 'Carousel object (2)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(36, '2021-07-09 14:21:13.845701', '3', 'Carousel object (3)', 3, '', 14, 1),
	(37, '2021-07-09 14:23:16.024864', '0', 'Carousel object (0)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(38, '2021-07-09 14:23:20.478897', '1', 'Carousel object (1)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(39, '2021-07-09 14:23:25.207191', '2', 'Carousel object (2)', 2, '[{"changed": {"fields": ["Slide del Carousel"]}}]', 14, 1),
	(40, '2021-07-09 14:23:28.433679', '1', 'Carousel object (1)', 2, '[]', 14, 1),
	(41, '2021-07-09 15:07:43.898822', '0', 'Mecanico object (0)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(42, '2021-07-09 15:07:48.478715', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(43, '2021-07-09 15:07:50.883721', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(44, '2021-07-09 15:07:52.796937', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(45, '2021-07-09 15:07:55.347107', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(46, '2021-07-09 15:07:57.798183', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(47, '2021-07-09 15:08:00.770675', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(48, '2021-07-09 15:08:03.398710', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(49, '2021-07-09 15:08:05.268002', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(50, '2021-07-09 15:08:07.750269', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(51, '2021-07-09 15:08:13.652895', '1', 'Mecanico object (1)', 3, '', 8, 1),
	(52, '2021-07-09 15:08:22.057727', '1', 'Mecanico object (1)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(53, '2021-07-09 15:08:25.492900', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(54, '2021-07-09 15:08:27.894317', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(55, '2021-07-09 15:08:30.101793', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(56, '2021-07-09 15:08:32.177203', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(57, '2021-07-09 15:08:35.112184', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(58, '2021-07-09 15:08:39.231905', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(59, '2021-07-09 15:08:42.898906', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(60, '2021-07-09 15:08:45.135672', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(61, '2021-07-09 15:08:46.995289', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(62, '2021-07-09 15:08:48.780207', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(63, '2021-07-09 15:08:50.598788', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(64, '2021-07-09 15:08:59.838332', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(65, '2021-07-09 15:09:24.085270', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico", "Nombre del Mec\\u00e1nico"]}}]', 8, 1),
	(66, '2021-07-09 15:09:42.069012', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(67, '2021-07-09 15:10:10.936959', '1', 'Mecanico object (1)', 2, '[]', 8, 1),
	(68, '2021-07-09 15:10:14.156364', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(69, '2021-07-09 15:12:38.866677', '3', 'Mecanico object (3)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico", "Nombre del Mec\\u00e1nico", "Especializaci\\u00f3n del Mec\\u00e1nico", "Experiencia del Mec\\u00e1nico", "Foto del Mec\\u00e1nico", "Foto del trabajo", "Foto del trabajo", "Foto del trabajo"]}}]', 8, 1),
	(70, '2021-07-09 15:12:41.175634', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(71, '2021-07-09 15:12:47.804525', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(72, '2021-07-09 15:12:49.982147', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(73, '2021-07-09 15:12:53.553579', '1', 'Mecanico object (1)', 3, '', 8, 1),
	(74, '2021-07-09 15:12:55.526076', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(75, '2021-07-09 15:12:57.367941', '2', 'Mecanico object (2)', 2, '[]', 8, 1),
	(76, '2021-07-09 15:12:59.571410', '0', 'Mecanico object (0)', 2, '[]', 8, 1),
	(77, '2021-07-09 15:13:02.128745', '1', 'Mecanico object (1)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(78, '2021-07-09 15:13:05.126982', '3', 'Mecanico object (3)', 2, '[]', 8, 1),
	(79, '2021-07-09 15:13:14.221123', '3', 'Trabajo object (3)', 2, '[]', 11, 1),
	(80, '2021-07-09 15:14:35.016201', '0', 'Trabajo object (0)', 2, '[{"changed": {"fields": ["Id del trabajo", "IdMecanico"]}}]', 11, 1),
	(81, '2021-07-09 15:14:40.899857', '3', 'Trabajo object (3)', 2, '[]', 11, 1),
	(82, '2021-07-09 15:14:57.851719', '4', 'Trabajo object (4)', 2, '[{"changed": {"fields": ["Diagnostico del trabajo", "IdMecanico"]}}]', 11, 1),
	(83, '2021-07-09 15:15:05.960963', '0', 'Trabajo object (0)', 2, '[]', 11, 1),
	(84, '2021-07-09 15:15:10.049552', '3', 'Trabajo object (3)', 2, '[]', 11, 1),
	(85, '2021-07-09 15:15:23.384699', '1', 'Trabajo object (1)', 2, '[{"changed": {"fields": ["Id del trabajo"]}}]', 11, 1),
	(86, '2021-07-09 15:15:31.800790', '1', 'Trabajo object (1)', 2, '[]', 11, 1),
	(87, '2021-07-09 15:15:39.112962', '0', 'Trabajo object (0)', 2, '[]', 11, 1),
	(88, '2021-07-09 15:15:57.463809', '6', 'Trabajo object (6)', 2, '[{"changed": {"fields": ["IdMecanico"]}}]', 11, 1),
	(89, '2021-07-09 15:16:02.082724', '2', 'Trabajo object (2)', 2, '[{"changed": {"fields": ["Id del trabajo"]}}]', 11, 1),
	(90, '2021-07-09 15:16:09.594018', '3', 'Trabajo object (3)', 2, '[]', 11, 1),
	(91, '2021-07-09 15:16:41.256824', '2', 'Mecanico object (2)', 3, '', 8, 1),
	(92, '2021-07-09 15:16:43.884899', '2', 'Mecanico object (2)', 2, '[{"changed": {"fields": ["Id de Mec\\u00e1nico"]}}]', 8, 1),
	(93, '2021-07-09 15:16:54.823099', '3', 'Mecanico object (3)', 3, '', 8, 1),
	(94, '2021-07-09 15:18:49.989946', '2', 'Trabajo object (2)', 2, '[{"changed": {"fields": ["Id del trabajo", "Trabajo realizado", "Diagnostico del trabajo", "Materiales utilizados", "Fecha del trabajo", "IdMecanico"]}}]', 11, 1),
	(95, '2021-07-09 15:19:28.220956', '3', 'Trabajo object (3)', 1, '[{"added": {}}]', 11, 1),
	(96, '2021-07-09 15:19:46.416415', '4', 'Trabajo object (4)', 3, '', 11, 1),
	(97, '2021-07-09 15:20:24.602031', '4', 'Trabajo object (4)', 1, '[{"added": {}}]', 11, 1),
	(98, '2021-07-09 15:20:49.964538', '5', 'Trabajo object (5)', 1, '[{"added": {}}]', 11, 1),
	(99, '2021-07-11 01:18:18.441505', '1', 'Perros', 3, '', 7, 1),
	(100, '2021-07-11 01:33:33.207456', '1', 'Horario object (1)', 2, '[{"changed": {"fields": ["Codigo de la persona"]}}]', 13, 1),
	(101, '2021-07-11 02:08:14.466441', '2', 'Horario object (2)', 1, '[{"added": {}}]', 13, 1),
	(102, '2021-07-11 02:09:27.103872', '3', 'Horario object (3)', 1, '[{"added": {}}]', 13, 1),
	(103, '2021-07-11 02:10:25.103149', '4', 'Horario object (4)', 1, '[{"added": {}}]', 13, 1),
	(104, '2021-07-11 02:13:48.633449', '5', 'Horario object (5)', 1, '[{"added": {}}]', 13, 1),
	(105, '2021-07-11 02:15:24.651905', '6', 'Horario object (6)', 1, '[{"added": {}}]', 13, 1),
	(106, '2021-07-11 02:16:16.471865', '8', 'Horario object (8)', 1, '[{"added": {}}]', 13, 1),
	(107, '2021-07-11 02:16:56.261207', '9', 'Horario object (9)', 1, '[{"added": {}}]', 13, 1),
	(108, '2021-07-11 02:18:49.352765', '10', 'Horario object (10)', 1, '[{"added": {}}]', 13, 1),
	(109, '2021-07-11 02:19:47.898865', '11', 'Horario object (11)', 1, '[{"added": {}}]', 13, 1),
	(110, '2021-07-11 02:21:02.907725', '12', 'Horario object (12)', 1, '[{"added": {}}]', 13, 1),
	(111, '2021-07-11 02:23:21.955409', '13', 'Horario object (13)', 1, '[{"added": {}}]', 13, 1),
	(112, '2021-07-11 02:25:07.087311', '14', 'Horario object (14)', 1, '[{"added": {}}]', 13, 1),
	(113, '2021-07-11 02:26:37.263870', '15', 'Horario object (15)', 1, '[{"added": {}}]', 13, 1),
	(114, '2021-07-11 02:27:15.161462', '16', 'Horario object (16)', 1, '[{"added": {}}]', 13, 1),
	(115, '2021-07-11 02:28:25.329689', '17', 'Horario object (17)', 1, '[{"added": {}}]', 13, 1),
	(116, '2021-07-11 02:30:01.588127', '18', 'Horario object (18)', 1, '[{"added": {}}]', 13, 1),
	(117, '2021-07-11 02:31:05.446606', '19', 'Horario object (19)', 1, '[{"added": {}}]', 13, 1),
	(118, '2021-07-11 02:32:02.577726', '20', 'Horario object (20)', 1, '[{"added": {}}]', 13, 1),
	(119, '2021-07-13 08:22:08.612029', '1', 'Mecanico object (1)', 1, '[{"added": {}}]', 8, 1),
	(120, '2021-07-13 08:24:22.881315', '0', 'Trabajo object (0)', 1, '[{"added": {}}]', 11, 1),
	(121, '2021-07-13 08:24:49.503856', '1', 'Trabajo object (1)', 1, '[{"added": {}}]', 11, 1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Volcando datos para la tabla kms.django_content_type: ~14 rows (aproximadamente)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
REPLACE INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(5, 'contenttypes', 'contenttype'),
	(14, 'core', 'carousel'),
	(7, 'core', 'categoria'),
	(13, 'core', 'horario'),
	(8, 'core', 'mecanico'),
	(12, 'core', 'perrito'),
	(11, 'core', 'trabajo'),
	(10, 'core', 'usuario'),
	(9, 'core', 'vehiculo'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Volcando datos para la tabla kms.django_migrations: ~27 rows (aproximadamente)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
REPLACE INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2021-07-08 00:50:46.323010'),
	(2, 'auth', '0001_initial', '2021-07-08 00:50:46.632614'),
	(3, 'admin', '0001_initial', '2021-07-08 00:50:46.698802'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2021-07-08 00:50:46.705809'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-07-08 00:50:46.712816'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2021-07-08 00:50:46.757473'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2021-07-08 00:50:46.776547'),
	(8, 'auth', '0003_alter_user_email_max_length', '2021-07-08 00:50:46.795094'),
	(9, 'auth', '0004_alter_user_username_opts', '2021-07-08 00:50:46.802101'),
	(10, 'auth', '0005_alter_user_last_login_null', '2021-07-08 00:50:46.832762'),
	(11, 'auth', '0006_require_contenttypes_0002', '2021-07-08 00:50:46.834764'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2021-07-08 00:50:46.841770'),
	(13, 'auth', '0008_alter_user_username_max_length', '2021-07-08 00:50:46.861235'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2021-07-08 00:50:46.881112'),
	(15, 'auth', '0010_alter_group_name_max_length', '2021-07-08 00:50:46.901517'),
	(16, 'auth', '0011_update_proxy_permissions', '2021-07-08 00:50:46.908524'),
	(17, 'auth', '0012_alter_user_first_name_max_length', '2021-07-08 00:50:46.928541'),
	(18, 'core', '0001_initial', '2021-07-08 00:50:47.118062'),
	(19, 'sessions', '0001_initial', '2021-07-08 00:50:47.147765'),
	(20, 'core', '0002_auto_20210707_2342', '2021-07-08 03:43:45.078512'),
	(21, 'core', '0003_auto_20210707_2348', '2021-07-08 03:49:20.023521'),
	(22, 'core', '0004_auto_20210707_2356', '2021-07-08 03:57:19.540454'),
	(23, 'core', '0005_mecanico_experienciamecanico', '2021-07-09 13:24:16.169437'),
	(24, 'core', '0006_carousel', '2021-07-09 13:45:38.349674'),
	(25, 'core', '0007_carousel_slidecarousel', '2021-07-09 14:20:50.387593'),
	(26, 'core', '0008_alter_carousel_slidecarousel', '2021-07-09 14:23:04.339946'),
	(27, 'core', '0009_auto_20210713_0432', '2021-07-13 08:32:41.280417');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Volcando datos para la tabla kms.django_session: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
REPLACE INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('5dh89clb0n2sh4sm8ankn3znv218kv01', '.eJxVjDsOwjAQBe_iGlkx_lPS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYtQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuPmiNnD1HbYM-D8Ua5UAZGskUjWHSRKSrKOmMBsEaXHEhBBKc9WPH-APCJOJs:1m1IGY:cU2vQ7a2ZaBLCH-WhM1ZFcL41CcZun5MBDpMbrQZDEE', '2021-07-22 00:51:46.404374'),
	('5prwsoivw8y1521dgrijbznpvqbnq0og', '.eJxVjDsOwjAQBe_iGlkx_lPS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYtQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuPmiNnD1HbYM-D8Ua5UAZGskUjWHSRKSrKOmMBsEaXHEhBBKc9WPH-APCJOJs:1m3Cxv:aMi8XtuZjMBRUTcl68BFnrsH4RxG9o0nSW7JSlpGUkY', '2021-07-27 07:36:27.129361'),
	('5vl9xjyonwsmjsm0t9cxno0w97zgon12', '.eJxVjDsOwjAQBe_iGlkx_lPS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYtQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuPmiNnD1HbYM-D8Ua5UAZGskUjWHSRKSrKOmMBsEaXHEhBBKc9WPH-APCJOJs:1m1tlK:zR-oacGcAPd0OJ1qeB6GNf3BQ9Zj4gpvYXOSAdi1aWc', '2021-07-23 16:54:02.273656'),
	('g0nayde27t9d9iyug0e589nyxxnximcw', '.eJxVjDsOwjAQBe_iGlkx_lPS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYtQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuPmiNnD1HbYM-D8Ua5UAZGskUjWHSRKSrKOmMBsEaXHEhBBKc9WPH-APCJOJs:1m3AFJ:JrI6Amf08qu4WYu0ytzazYM83rvB9vjHYIgi9tLzfa8', '2021-07-27 04:42:13.866175'),
	('w4ryxbf4b3iny4c9s8sikosjpgy74ry2', '.eJxVjDsOwjAQBe_iGlkx_lPS5wzWeneNA8iR4qRC3B0ipYD2zcx7iQTbWtPWeUkTiYtQ4vS7ZcAHtx3QHdptlji3dZmy3BV50C7Hmfh5Pdy_gwq9fmuPmiNnD1HbYM-D8Ua5UAZGskUjWHSRKSrKOmMBsEaXHEhBBKc9WPH-APCJOJs:1m1VET:wc8D5KGbpq7Ywkv0y3LXt8mQpIYqRhooGycqiGVcAnM', '2021-07-22 14:42:29.840520');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

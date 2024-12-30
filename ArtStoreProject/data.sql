-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: artstore
-- ------------------------------------------------------
-- Server version	8.0.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Phone` varchar(10) NOT NULL,
  `Province` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `District` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Ward` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Detail` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `User_Id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `address_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Nguyễn Quang','0832977767','Hà Nội','Ba Vì','Ba Trại','Thôn 2, Ba Trại, Ba Vì, Hà Nội',3),(61,'Nguyễn Bá Thông','0923444221','Hà Nội','Thanh Oai','Thanh Cao','Tây Đằng, Ba Vì, Hà Nội',2),(62,'Trương Công Mạnh','0922244422','Bình Thuận  ','Bắc Bình','Lương Sơn','Hà Nam',3),(63,'pham minh tuan','0355000276','Bắc Ninh','Lương Tài','Quảng Phú','qưewqeqweq',1053),(64,'Nguyễn Xuân Phú','0355000276','Hà Nội','Thạch Thất','Liên Quan','Liên Quan, Thạch Thất, Hà Nội',1),(65,'Nguyễn Bá Thông','0832977767','Hồ Chí Minh','Thủ Đức','Hiệp Bình Phước','Lạc Long Quân, Tây Hồ, Hà Nội',2),(66,'Nguyễn Xuân Phú','0981137973','c','a','b','Lai Xá, Hoài Đức, Hà Nội',1),(67,'Nguyễn Minh Quang','0334973459','c','a','b','Tổ Văn Trì 4, Minh Khai, Bắc Từ Liêm, Hà Nội',1057);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Content` longtext NOT NULL,
  `Logo` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `UploadDay` date NOT NULL,
  `Banner` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Active` bit(1) NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  `NameSearch` varchar(50) NOT NULL,
  `Description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (1,'Tranh Cát Nghệ Thuật – Khái Niệm Nguồn Gốc, Chất Liệu & Kỹ Thuật','<h3>Những lý do nên chọn tranh sơn dầu để trang trí phòng ăn nhà bếp</h3>                                  <br>                                  <br>                                  <ul> <li>Những bức tranh sơn dầu được vẽ bằng tay hoàn toàn, mang đến nét đẹp mộc mạc bình dị nhưng không kém phần sang trọng</li><li>Mỗi tác phẩm đều mang một ý nghĩa riêng biệt, đồng thời đó nó còn có ý nghĩa phong thủy sâu sắc</li> <li>Tranh sơn dầu được biết đến với độ bền vượt trội. Màu sơn dầu có khả năng chống phai màu, chống ẩm tốt, dễ dàng lau chùi và bảo quản</li><li>Treo tranh sơn dầu trong phòng bếp vừa giúp tô điểm cho không gian, vừa mang lại cảm giác thư giãn khi thưởng thức bữa cơm cùng gia đình</li></ul><br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"><img src=\"https://linhtran.vn/wpcontent/uploads/2024/06/tranh-son-dau-treo-phong-bep-4.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Lý do nên chọn tranh sơn dầu cho phòng bếp</i></span></div></div><br><h3>Mẹo chọn tranh sơn dầu treo phòng bếp phù hợp </h3><br><span>Để chọn tranh sơn dầu treo phòng bếp phù hợp, bạn cần chú ý đến chủ đề và màu sắc mà mình sẽ sử dụng, đảm bảo có sự kết hợp hài hòa với nhau.</span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span> Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng. </span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span>                                      Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng.                                  </span> <br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/tranh-son-dau-treo-phong-bep-1.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Ảnh: Instagram @iam_neih</i></span></div></div>','tranh-cat-nghe-thuat.jpg','2021-12-09','tranh-cat-nghe-thuat.jpg',_binary '','2021-12-09 08:53:05',3,NULL,0,'2024-06-23 10:52:11',3,'thi-nhan-viet-nam','Cuốn sách “Thi nhân Việt Nam” là một trong những tác phẩm nổi tiếng gắn liền với thành công của hai nhà phê bình văn học Hoài Thanh- Hoài Chân. Hoài Thanh(1909-1982) là một nhà phê bình văn học uyên bác và tinh tế.'),(2,'Hướng dẫn cách treo tranh sơn dầu đẹp bạn không nên bỏ qua','<h3>Cách treo tranh sơn dầu – Lựa chọn tranh có nội dung phù hợp với không gian</h3><br><span>Khi chọn tranh sơn dầu để làm mới không gian sống thì lưu ý đầu tiên và quan trọng nhất là nội dung tranh và việc bố trí tranh cần phải phù hợp với phong cách chung của căn phòng. Ví dụ, nếu căn phòng theo phong cách hiện đại, bạn nên chọn tranh có bố cục đơn giản, màu sắc trang nhã. Ngược lại, nếu căn phòng theo phong cách cổ điển, bạn có thể chọn tranh có họa tiết cầu kỳ, màu sắc rực rỡ. </span>br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/cach-treo-tranh-son-dau-1.jpg\"alt=\"treo-tranh \" border=\"0\"> <span style=\"color: #777777;\"><i>Ảnh: ArtStore</i></span></div></div><br><div><span>Về phần nội dung của bức tranh cũng cần phải phù hợp với phong cách bài trí của không gian nơi nó được trưng bày. Nhưng nếu muốn phá cách bạn có thể không chọn tranh theo nguyên tắc mà chọn theo sở thích và cá tính nghệ thuật của riêng mình.\nVí dụ, nếu bạn muốn chọn một bức tranh sơn dầu treo phòng khách thì bạn có thể chọn lựa bức tranh sơn dầu phong cảnh để mang lại cảm giác tươi mát cho không gian, Hay đối với cách bố trí tranh sơn dầu treo phòng bếp, hãy  chọn tranh về hoa quả, hay dụng cụ nấu ăn nhằm tạo cảm hứng nấu nướng khi bạn bước vào căn bếp,..</span></div>','cach-treo-tranh-son-dau-1.jpg','2021-12-09','cach-treo-tranh-son-dau-1.jpg',_binary '','2021-12-09 19:11:19',3,NULL,0,'2024-06-23 10:44:30',3,'huong-dan-cach-treo-tranh-son-dau-dep','Cuốn sách “Thi nhân Việt Nam” là một trong những tác phẩm nổi tiếng gắn liền với thành công của hai nhà phê bình văn học Hoài Thanh- Hoài Chân. Hoài Thanh(1909-1982) là một nhà phê bình văn học uyên bác và tinh tế.'),(3,'Tranh sơn dầu treo phòng bếp, phòng ăn hiện đại, ấm cúng','<h3>Những lý do nên chọn tranh sơn dầu để trang trí phòng ăn nhà bếp</h3>                                  <br>                                  <br>                                  <ul> <li>Những bức tranh sơn dầu được vẽ bằng tay hoàn toàn, mang đến nét đẹp mộc mạc bình dị nhưng không kém phần sang trọng</li><li>Mỗi tác phẩm đều mang một ý nghĩa riêng biệt, đồng thời đó nó còn có ý nghĩa phong thủy sâu sắc</li> <li>Tranh sơn dầu được biết đến với độ bền vượt trội. Màu sơn dầu có khả năng chống phai màu, chống ẩm tốt, dễ dàng lau chùi và bảo quản</li><li>Treo tranh sơn dầu trong phòng bếp vừa giúp tô điểm cho không gian, vừa mang lại cảm giác thư giãn khi thưởng thức bữa cơm cùng gia đình</li></ul><br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"><img src=\"https://linhtran.vn/wpcontent/uploads/2024/06/tranh-son-dau-treo-phong-bep-4.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Lý do nên chọn tranh sơn dầu cho phòng bếp</i></span></div></div><br><h3>Mẹo chọn tranh sơn dầu treo phòng bếp phù hợp </h3><br><span>Để chọn tranh sơn dầu treo phòng bếp phù hợp, bạn cần chú ý đến chủ đề và màu sắc mà mình sẽ sử dụng, đảm bảo có sự kết hợp hài hòa với nhau.</span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span> Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\nChủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\nNếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng. </span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span>                                      Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\nChủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\nNếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng.                                  </span> <br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/tranh-son-dau-treo-phong-bep-1.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Ảnh: Instagram @iam_neih</i></span></div></div>','tranh-son-dau-treo-phong-bep.jpg','2021-12-11','tranh-son-dau-treo-phong-bep.jpg',_binary '','2021-12-11 07:33:38',3,NULL,0,'2024-06-19 01:46:50',1,'tranh-son-dau-treo-phong-bep','Lối viết của Dumas Cha là lối bút duy trì sự kết hợp hoàn hảo giữa chân lý hiện thực và những phép màu kì diệu nhân đạo hóa mỗi câu chuyện, mỗi linh hồn trong tiểu thuyết. Văn phong nhà văn chỉ ra rằng, dù là trong tâm tưởng của kẻ viết lách hay'),(4,'Tranh Giấy Dó – Vẻ Đẹp Chất Liệu Truyền Thống Việt','<h3>Những lý do nên chọn tranh sơn dầu để trang trí phòng ăn nhà bếp</h3>                                  <br>                                  <br>                                  <ul> <li>Những bức tranh sơn dầu được vẽ bằng tay hoàn toàn, mang đến nét đẹp mộc mạc bình dị nhưng không kém phần sang trọng</li><li>Mỗi tác phẩm đều mang một ý nghĩa riêng biệt, đồng thời đó nó còn có ý nghĩa phong thủy sâu sắc</li> <li>Tranh sơn dầu được biết đến với độ bền vượt trội. Màu sơn dầu có khả năng chống phai màu, chống ẩm tốt, dễ dàng lau chùi và bảo quản</li><li>Treo tranh sơn dầu trong phòng bếp vừa giúp tô điểm cho không gian, vừa mang lại cảm giác thư giãn khi thưởng thức bữa cơm cùng gia đình</li></ul><br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"><img src=\"https://linhtran.vn/wpcontent/uploads/2024/06/tranh-son-dau-treo-phong-bep-4.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Lý do nên chọn tranh sơn dầu cho phòng bếp</i></span></div></div><br><h3>Mẹo chọn tranh sơn dầu treo phòng bếp phù hợp </h3><br><span>Để chọn tranh sơn dầu treo phòng bếp phù hợp, bạn cần chú ý đến chủ đề và màu sắc mà mình sẽ sử dụng, đảm bảo có sự kết hợp hài hòa với nhau.</span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span> Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng. </span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span>                                      Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng.                                  </span> <br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/tranh-son-dau-treo-phong-bep-1.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Ảnh: Instagram @iam_neih</i></span></div></div>','Tranh-Giay-Do-1.jpg','2021-12-11','Tranh-Giay-Do-1.jpg',_binary '','2021-12-11 09:52:12',3,NULL,0,'2024-06-23 10:51:08',3,'ke-trom-giac-mo','Hai nhà khoa học trẻ thiên tài: Tokita Kousaku và Chiba Atsuko được đồng đề cử cho giải Nobel về Sinh lý và Y khoa vì bước đột phá trong việc điều trị chứng tâm thần phân liệt khi sử dụng một thiết bị có tên PT xâm nhập vào tiềm thức người bệnh'),(5,'Nghệ Thuật Tranh Trừu Tượng: Làm Thế Nào Để Hiểu Và Tận Hưởng ?','<h3>Những lý do nên chọn tranh sơn dầu để trang trí phòng ăn nhà bếp</h3>                                  <br>                                  <br>                                  <ul> <li>Những bức tranh sơn dầu được vẽ bằng tay hoàn toàn, mang đến nét đẹp mộc mạc bình dị nhưng không kém phần sang trọng</li><li>Mỗi tác phẩm đều mang một ý nghĩa riêng biệt, đồng thời đó nó còn có ý nghĩa phong thủy sâu sắc</li> <li>Tranh sơn dầu được biết đến với độ bền vượt trội. Màu sơn dầu có khả năng chống phai màu, chống ẩm tốt, dễ dàng lau chùi và bảo quản</li><li>Treo tranh sơn dầu trong phòng bếp vừa giúp tô điểm cho không gian, vừa mang lại cảm giác thư giãn khi thưởng thức bữa cơm cùng gia đình</li></ul><br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"><img src=\"https://linhtran.vn/wpcontent/uploads/2024/06/tranh-son-dau-treo-phong-bep-4.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Lý do nên chọn tranh sơn dầu cho phòng bếp</i></span></div></div><br><h3>Mẹo chọn tranh sơn dầu treo phòng bếp phù hợp </h3><br><span>Để chọn tranh sơn dầu treo phòng bếp phù hợp, bạn cần chú ý đến chủ đề và màu sắc mà mình sẽ sử dụng, đảm bảo có sự kết hợp hài hòa với nhau.</span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span> Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng. </span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span>                                      Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng.                                  </span> <br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/tranh-son-dau-treo-phong-bep-1.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Ảnh: Instagram @iam_neih</i></span></div></div>','Tranh-Truu-Tuong-3.jpg','2021-12-11','Tranh-Truu-Tuong-3.jpg',_binary '','2021-12-11 10:09:13',3,NULL,0,'2024-06-23 10:50:14',3,'ganh-hang-hoa','Cùng với “Đời mưa gió”, “Anh phải sống”, tiểu thuyết “Gánh hàng hoa” là thành quả kết hợp của đôi bạn thân Nhất Linh và Khái Hưng. Tác phẩm thông qua đề tài tình yêu đặt trên lòng cao thượng và nỗi tuyệt vọng đậm chất lãng mạn, ca tụng những'),(6,'Giá Trị Nghệ Thuật Tranh Sơn Mài – Nét Đẹp Tinh Túy Truyền Thống Hội Họa Việt Nam','<h3>Review sách: Người tình – Marguerite Duras</h3>\n                                <br>\n                                <span>\n                                    “Hoàn cảnh”, hai chữ định hình cuộc sống con người, vì hoàn cảnh mà đôi khi chẳng có\n                                    lựa chọn nào khác. Với “Người tình”, Marguerite Duras đưa người đọc cảm nhận rõ thế\n                                    nào là sức ảnh hưởng của “hoàn cảnh” đối với cuộc đời của mỗi người, cụ thể là một\n                                    cô gái mới mười lăm tuổi. Vì cuộc sống xa xứ nghèo khổ, vì những ám ảnh của bà mẹ và\n                                    của người tình, chính nhân vật trong truyện – tác giả, đã đi qua quá nhiều nấc thăng\n                                    trầm so với cuộc sống của một cô gái đương tuổi thiếu niên.\n                                </span>\n                                <br>\n                                <br>\n                                <div class=\"image\">\n                                    <div class=\"thumbnail\" style=\"border: none; text-align: center;\">\n                                        <img src=\"https://i.ibb.co/p1VmnfG/nguoi-tinh-1.png\" alt=\"nguoi-tinh-1\"\n                                            border=\"0\">\n                                    </div>\n                                </div>\n                                <h3>Cuộc sống ám ảnh của Duras ở Sa Đéc (Vĩnh Long) cùng với gia đình của mình</h3>\n                                <br>\n                                <span>\n                                    Khi con người rời xa quê hương, họ ít nhiều đều cảm thấy cô đơn và lạc lõng. Duras\n                                    không còn cha ở bên cạnh, ông chọn trở về Pháp để ra đi. Ở lại Việt Nam cùng với mẹ\n                                    và hai anh trai của mình, tuổi thơ của cô hiện lên ngột ngạt qua từng con chữ. Vì\n                                    nghèo khổ, vì cô đơn, mẹ của Duras luôn đặt cô vào khuôn khổ bà sắp xếp sẵn. Qua\n                                    những tự sự của nhà văn, bạn đọc cảm nhận sự dồn nén của nhân vật – con người khi\n                                    mất tự do thường sẽ vẫy vùng. Cái nghèo đói đã làm mẹ Duras và cả cô ấy mệt mỏi,\n                                    không chỉ có thế, trong cô còn là sự hỗn tạp của những cảm xúc như thù ghét hay xót\n                                    thương người mẹ làm nghề giáo.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Những người mẹ, bằng một cách nào đó, họ luôn dành sự ưu tiên cho con trai cả. Đây\n                                    là lối mòn suy nghĩ từ Đông sang Tây của các bà mẹ, điều này làm Duras và anh kế của\n                                    cô đau khổ, vì người anh cả chỉ mang lại nợ nần và giả tạo. Theo lời nhà văn, giữa\n                                    cái nóng hừng hực ở xứ miền Tây sông nước xa lạ chốn Đông Dương, sự đói khổ nhưng\n                                    luôn tỏ ra thanh cao một cách đáng thương của người mẹ, cùng với sự áp đặt nặng nề\n                                    khi bà gạt phăng giấc mơ viết lách của con bé, đã làm những trang đầu quyển sách\n                                    ngập trong sự mỏi mệt, bức bối và giằng xé của người con gái.\n                                </span>\n                                <br>\n                                <br>\n                                <h3>Người tình xuất hiện</h3>\n                                <br>\n                                <span>\n                                    Trên một con phà đang sang sông vào một ngày nắng nóng, người tình của nữ nhà văn\n                                    xuất hiện cùng với một chiếc limousine đen sang trọng và người tài xế mặc đồ trắng.\n                                    Khác với ngôi thứ nhất khi tác giả xưng hô để kể về mẹ và chính mình, những câu\n                                    chuyện về người đàn ông Trung Hoa này luôn được kể lại bằng ngôi thứ ba. Duras gọi\n                                    bản thân là “cô” và người đàn ông kia là “anh”.\n                                </span>\n                                <br>\n                                <span>\n                                    Những trang truyện về cuộc tình này luôn có gì đó ngăn trở, dù tác giả chẳng nói về\n                                    bản thân mình là bao. Duras nói cô yêu tiền của “anh”, nhưng trong lòng người thiếu\n                                    nữ mới lớn lại có nhiều điều giằng xé, một thứ cảm xúc mới lạ chớm nở trong tâm hồn\n                                    khô cằn của cô. Cảm xúc ấy mạnh mẽ đến mức như ra bật ra khỏi trang sách. Nữ nhà văn\n                                    nói về lần mời thuốc làm quen của “anh”, về cuộc làm tình đầu tiên và những cuộc làm\n                                    tình đều đặn sau này. Và trong từng hành động của người đàn ông đó, có một chi tiết\n                                    mà Duras miêu tả rất kỹ lưỡng, đó là sự run rẩy của “anh” trong những lần nói về\n                                    tình yêu.\n                                </span>\n                                <br>\n                                <span>\n                                    Khác với sự nâng niu và né tránh của người đàn ông ba mươi mốt tuổi, Duras đã thẳng\n                                    thừng từ chối ngay từ đầu: “Anh hãy làm tình với em như cách anh làm với bao người\n                                    đàn bà khác”. Vì những tự sự về người tình này được viết theo ngôi thứ ba, người đọc\n                                    mơ hồ cảm thấy nữ nhà văn đến với “anh” chỉ vì tiền, nhưng những trang giấy tiếp về\n                                    sau đã cho thấy chuyến phà định mệnh ấy thật sự là khởi đầu cho thứ tình cảm của hai\n                                    con người dễ bị tổn thương. Cô gái mới mười lăm, mang trong mình bao suy tư muộn\n                                    phiền, nghĩ rằng cuộc đời thật tẻ nhạt, nhưng khi đối mặt với thứ cảm xúc dễ chịu\n                                    thì không dễ tiếp nhận. Có lẽ vì vậy đến khi đánh mất cảm xúc đó, cô mới hiểu và\n                                    tiếc nuối.\n                                </span>\n                                <br>\n                                <br>\n                                <div class=\"image\">\n                                    <div class=\"thumbnail\" style=\"border: none; text-align: center;\">\n                                        <img src=\"https://i.ibb.co/BgDcw0L/nguoi-tinh-2.png\" alt=\"nguoi-tinh-2\"\n                                            border=\"0\">\n                                    </div>\n                                </div>\n                                <h3>Những tự sự cuối cùng của nữ nhà văn</h3>\n                                <br>\n                                <span>\n                                    Đến mãi khi xấp trang còn lại của quyển sách đã mỏng, nhà văn mới nói nhiều hơn về\n                                    chính bản thân mình, một cách trực tiếp. Duras thể hiện tình yêu của mình với người\n                                    anh thứ – người anh trai luôn yêu thương cô thay vì chửi bới như người anh cả; Duras\n                                    kể về nỗi ám ảnh thuở bé, kể về mẹ già bằng một chất giọng trìu mến yêu thương thay\n                                    vì những vật vã giữa hai mẹ con trong kí ức ở Sa Đéc, và kể về người tình khi cả hai\n                                    quyết định chia xa. Cuộc chia tay nằm trong khoảng tầm hai đến ba trang giấy cuối\n                                    cùng, khi anh quay mặt đi để né tránh trong lần chào tạm biệt, và cũng tại chiếc\n                                    limousine ấy mà anh chăm chú nhìn cô trên chuyến tàu trở về Pháp, và lần đầu tiên,\n                                    nữ nhà văn nói về nỗi đau của mình, cô khóc. Cuối cùng, quyển sách kết thúc bằng sự\n                                    liên lạc qua điện thoại của cả hai khi “hoàn cảnh” đã chẳng thể đổi thay con người\n                                    thêm một lần nào nữa.\n                                </span>','nghe-thuat-tranh-son-mai-net-dep-truyen-thong-viet-nam.jpg','2021-12-11','nghe-thuat-tranh-son-mai-net-dep-truyen-thong-viet-nam.jpg',_binary '','2021-12-11 16:07:27',3,NULL,0,NULL,0,'nguoi-tinh','“Hoàn cảnh”, hai chữ định hình cuộc sống con người, vì hoàn cảnh mà đôi khi chẳng có lựa chọn nào khác. Với “Người tình”, Marguerite Duras đưa người đọc cảm nhận rõ thế nào là sức ảnh hưởng của “hoàn cảnh” đối với'),(7,'Vẻ Đẹp & Ý Nghĩa Của Hoa Sen Trong Nghệ Thuật Việt Nam','<h3>Đám cưới không có giấy giá thú: Bi kịch của tri thức</h3>\n                                <br>\n                                <span>\n                                    <i>\n                                        Câu chuyện về một nhà giáo muốn được xã hội công nhận “nên duyên” với khát khao\n                                        đời mình, nhưng bị cự tuyệt thẳng thừng bởi những kẻ tự xưng là đại diện “họ nhà\n                                        gái”. Qua những lát cắt về cuộc đời Tự và cả những người xung quanh, Ma Văn\n                                        Kháng đã làm ta ấn tượng với những lời lẽ chua chát rằng đời là một vại dưa muối\n                                        hỏng, nếu cuộc sống là một người mẹ thì nó chỉ là một người mẹ ghẻ mà thôi.\n                                    </i>\n                                </span>\n                                <br>\n                                <br>\n                                <div class=\"image\">\n                                    <div class=\"thumbnail\" style=\"border: none; text-align: center;\">\n                                        <img src=\"https://i.ibb.co/M79sVWm/dam-cuoi-khong-co-gia-thu-1.png\"\n                                            alt=\"dam-cuoi-khong-co-gia-thu-1\" border=\"0\">\n                                    </div>\n                                </div>\n                                <h3>“Đời là một vại dưa muối hỏng”</h3>\n                                <br>\n                                <span>\n                                    Một hôm khi bước vào lớp học, Tự nhìn thấy trên bảng viết dòng chữ “Đời là một vại\n                                    dưa muối hỏng”, không giống một trò đùa, dòng chữ lớn được viết ngay ngắn một cách\n                                    đầy ý thức và anh đã thảo luận với học trò về chủ đề này.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Câu nói dường như bông đùa lại rất có tính khái quát về xã hội hiện thời. Nhà văn\n                                    không để Tự, Kha, hoặc một nhân vật nào khác đề cập đến luận điểm này, mà để chính\n                                    những học sinh nói lên điều này, có dụng ý gì chăng? Phải chăng, xã hội này đã băng\n                                    hoại đến mức cả những học sinh còn ngồi trên ghế nhà trường cũng nhận thức được chứ\n                                    không cần đến những người sâu sắc như Tự? Nên buồn vì thực tại xã hội khắc nghiệt\n                                    hay vui vì những học sinh đều ý thức được xã hội này đã “hỏng”?\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Sau những gì Tự chứng kiến và trải qua, xã hội này đã thực sự trở thành một vại dưa\n                                    hỏng khi “kẻ xấu thịnh đạt, người tốt ôm hận và chỉ biết trách mình.”\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Khi Tự vẫn còn dạy học ở một trường tại vùng cao, chỉ vì “đắc tội” bí thư thị ủy mà\n                                    Tự bị đưa ra chiến trường, những tội danh được ra ra như “kiêu căng, tự phụ, luyến\n                                    ái bất chính, quan điểm lập trường giai cấp rất kém cỏi, lại có nhiều điều tiếng về\n                                    các vụ việc nghi vấn. Kỷ luật thì chưa được.”. Tội danh được ra mà không cần bằng\n                                    chứng, kết tội mà không cần phiên tòa; đó chính là “thiện ý” của ngài bí thư thị ủy.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Tại trường học, nơi dùng để trồng người, những nhà giáo lại là những người có vấn đề\n                                    nhất về mặt đạo đức. Cẩm, hiệu trưởng nhà trường, xuất thân thì khỏi chê, ba đời là\n                                    mõ, chỉ mới học hết lớp 7, sau đó trở thành thầy giáo thể dục, rồi hiệu trưởng\n                                    trường cấp hai, giáo viên cấp ba, rồi cuối cùng thành hiệu trưởng trường trung học\n                                    số 5 này. Một đường thăng tiến, Cẩm vẫn không bỏ được cái “tư cách mõ” của mình;\n                                    “tham lam vô độ, bần tiện và liều lĩnh”. Nhưng khi Cẩm được bổ nhiệm làm hiệu trưởng\n                                    ai mà quan tâm điều đó chứ, người ta chỉ nghĩ “đã là Đảng viên thì làm lãnh đạo\n                                    được. Lãnh đạo khó nhất mà còn làm được thì có việc gì mà chịu bó tay”. Một niềm tin\n                                    ngây thơ tạo nên một cuộc “cưỡng hôn thô lỗ” và điều này có thể giết chết tương lai\n                                    của cả một thế hệ học sinh dưới mái trường trung học số 5. Dương, bí thư chi bộ nhà\n                                    trường, một con người cổ hủ, chỉ luôn miệng những nguyên tắc cứng nhắc và những giáo\n                                    điều đôi khi đến chính ông ta cũng không hiểu. Thuật, giáo viên toán học, một thiên\n                                    tài toán học nhưng bị cuốn vào guồng quay của tiền tài. Thảnh, giáo viên hóa học,\n                                    người luôn chỉ biết bảo vệ lợi ích bản thân và cố chiếm nhiều món hời nhất có thể.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Tại khu nhà Tự sống, Xuyến, vợ của anh là một người chỉ biết quan tâm đến tiền tài,\n                                    khinh khi chồng vì không kiếm được tiền. Trình, một cô bé tật nguyền giờ trở thành\n                                    một người đầy ác ý. Quỳnh, người mới dọn đến thì dụ dỗ Xuyến ngoại tình với gã.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Ma Văn Kháng đã khắc hoạ một xã hội băng hoại đạo đức, một thời đại “thịnh thế của\n                                    cái ác”, trong mỗi sự kiện, mỗi lát cắt của cuộc sống đều hiện hữu cái xấu, cái ác.\n                                    Dù sự miêu tả của ông có đôi phần thái quá, nhưng nó làm ta nhận ra cái xấu vẫn luôn\n                                    tồn tại và không thể nào xóa bỏ. Không có gì là tuyệt đối, và sẽ không có một xã hội\n                                    toàn những điều tốt đẹp. Và vì cuộc đời là một cái vại, chúng ta luôn ở cùng nhau,\n                                    nên chỉ cần còn tồn tại một nhân tố xấu thì cái xấu ấy sẽ lây lan mạnh mẽ. Cũng như\n                                    Xuyến và Trình, hai nhân vật này đã bị thay đổi từ hai người hiền lành, chất phác\n                                    trở thành người hám lợi, quái ác. Và thế là cuộc đời trở thành “một vại dưa muối\n                                    hỏng”. Nhận thức được thực tại bi kịch nhưng không cách nào thay đổi, câu bông đùa\n                                    “đời là một vại dưa muối hỏng” là một cách nói có vẻ tinh nghịch nhưng cũng đầy chua\n                                    chát về về cuộc đời.\n                                </span>\n                                <h3>“Một cuốn sách hay đặt lầm chỗ”</h3>\n                                <br>\n                                <span>\n                                    Thuật đã nhận xét cuộc đời Tự như thế này: “Ông là một cuốn sách hay để lầm chỗ. Một\n                                    đám cưới không thành. Một bữa tiệc dang dở.” Tính cách của Tự không hợp với trường\n                                    trung học số 5 và với cả vợ mình. Tự là một số phận bi kịch khi là một trí thức\n                                    nhưng suốt ngày bị vây quanh bởi cơm áo gạo tiền, bị vợ chì chiết vì đồng lương còm\n                                    cõi.\n                                </span>\n                                <br>\n                                <span>\n                                    Trong quyển sách này, bị đặt sai chỗ không chỉ có Tự, mà là tất cả những người trí\n                                    thức vào thời điểm ấy. Người trí thức trong câu chuyện được miêu tả là không được\n                                    thừa nhận, chỉ là kẻ đứng bên lề của mọi sự. Đó là ông giáo Biểu, cha của Tự: “ông\n                                    giáo Biểu tuy đứng cùng một đội ngũ với ông bí thư huyện ủy, anh cán bộ thuế nông\n                                    nghiệp, chị huyện hội phụ nữ, chú giám mã huyện đội… nhưng trong đối xử, vẫn bị gạt\n                                    ngầm sang một phía khác, nếu không bị coi là kẻ có vấn đề nghi vấn về chính trị, thì\n                                    giỏi lắm cũng chỉ là một “nhân sĩ tiến bộ” – một tầng lớp bị cười mũi và miệt thị\n                                    ngầm.”\n                                </span>','ve-dep-y-nghia-cua-hoa-sen-trong-nghe-thuat-viet-nam.jpg','2021-12-11','ve-dep-y-nghia-cua-hoa-sen-trong-nghe-thuat-viet-nam.jpg',_binary '','2021-12-11 16:15:59',3,NULL,0,NULL,0,'dam-cuoi-khong-co-gia-thu','Câu chuyện về một nhà giáo muốn được xã hội công nhận “nên duyên” với khát khao đời mình, nhưng bị cự tuyệt thẳng thừng bởi những kẻ tự xưng là đại diện “họ nhà gái”. Qua những lát cắt về cuộc đời Tự và cả những người xung quanh'),(8,'7 Cách Đơn Giản Để Làm Mới Không Gian Sống','<h3>Lũy hoa – Chiến lũy trên bạt ngàn hoa.</h3>\n                                <br>\n                                <span>\n                                    Tuy không thể thực hiện trọn vẹn áng văn chương mang tầm vóc lớn lao về Chín năm\n                                    kháng chiến trường kỳ đầy oanh liệt, nhưng nhà văn Nguyễn Huy Tưởng đã kịp viết kịch\n                                    bản phim “Lũy hoa” bù đắp phần nào tiếc nuối mà cuốn tiểu thuyết “Sống mãi với thủ\n                                    đô” đã để lại.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    “Trung đoàn in dấu Lũy Hoa,\n                                </span>\n                                <br>\n                                <span>\n                                    Hồ Gươm ngấn nước chưa nhòa bóng anh.”\n                                </span>\n                                <br>\n                                <span>\n                                    (Hằng Phương)\n                                </span>\n                                <br>\n                                <br>\n                                <div class=\"image\">\n                                    <div class=\"thumbnail\" style=\"border: none; text-align: center;\">\n                                        <img src=\"https://i.ibb.co/BCqc8Fv/luy-hoa-1.png\" alt=\"luy-hoa-1\" border=\"0\">\n                                    </div>\n                                </div>\n                                <span>\n                                    Năm 1960, Nguyễn Huy Tưởng công bố truyện phim “Lũy hoa”, dẫu hoàn thành sau nhưng\n                                    được ra mắt độc giả trước tiểu thuyết “Sống mãi với thủ đô”. Nếu cuốn tiểu thuyết\n                                    tái hiện Hà Nội những ngày đầu Toàn quốc kháng chiến, thì tập truyện phim phác thảo\n                                    toàn cảnh 60 ngày đêm Hà Nội quyết tử cho Tổ quốc quyết sinh.\n                                </span>\n                                <h3>60 ngày đêm khói lửa, hẹn ngày về lấy lại Thủ đô!</h3>\n                                <span>\n                                    Chỉ với ba phần nhưng dày đặc các tình tiết điện ảnh, “Lũy hoa” làm sống dậy trận Hà\n                                    Nội đông xuân 1946–1947, sự kiện khởi động Chiến tranh Đông Dương giữa lực lượng\n                                    Việt Minh và tập đoàn quân viễn chinh Pháp từ đêm 19/12/1946 đến trưa 18/02/1947.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Vì là kịch bản phim, tác phẩm hướng đến một mục tiêu khác với tiểu thuyết, ở đây là\n                                    tính khả thi của các mảng khối hành động, tập trung vào hai tuyến chính: tản cư và\n                                    cố thủ. Giữa hai mảng khối lớn của hành động mang trong mình mọi nghĩ suy, tâm\n                                    trạng, hoạt động của con người, là sự chuyển cảnh đầy linh hoạt trên hàng loạt các\n                                    địa danh Hà Nội, với đủ các tầng lớp người và nghề nghiệp. Hà Nội vừa lãng mạn vừa\n                                    hào hùng, hiện ra trọn vẹn từ một trái tim ôm mối tình si với mảnh đất ngàn năm văn\n                                    vật.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Cuộc tản cư, rút ra khỏi Hà Nội của bộ phận người già, phụ nữ và trẻ con, trong sự\n                                    hộ tống của các anh bộ đội và Nhân – cô gái làng hoa Ngọc Hà. Đồng bào tản cư vượt\n                                    qua gầm cầu Long Biên, trong đêm tối mênh mông, dày đặc, hãi hùng. Tất cả đều cố\n                                    gắng lặng im, nhưng tiếng ho của người bệnh người già và tiếng khóc của trẻ sơ sinh\n                                    chẳng thể nào kìm nổi đã đánh động địch. Tiếng súng nổ vang. Bóng người ngã vật\n                                    xuống, mắt dại đờ, thê lương…\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    Cuộc cố thủ, bám trụ với Hà Nội của bộ phận các đơn vị tự vệ chiến đấu, công an xung\n                                    phong và vệ quốc đoàn phối hợp với nhân dân Hà Nội tổ chức đánh trả và kìm chân quân\n                                    Pháp. Nổi bật những gương mặt của Kiên, Dân, Thắng, Thu Phong, Loan, Quyên… Đa phần\n                                    là thanh niên trai tráng, nhưng cũng có thiếu nữ, trẻ con đòi ở lại, không đánh được\n                                    thì hô xung phong để trợ uy. Họ là đội cảm tử quân thủ đô. Họ tìm và tạo vũ khí. Họ\n                                    cầm súng và lựu đạn chờ giặc. Họ nổ súng giữ từng ngôi nhà, góc phố. Trước mặt là\n                                    đối phó với giặc, phía trong và sau là lo lắng tổ chức cho đồng bào tản cư. Trong\n                                    tiếng súng đạn hòa lẫn tiếng đàn ca, trong cái Tết đặc biệt của đời người, tất thảy\n                                    đồng lòng, đoàn kết cùng nhau chiến đấu giữa thủ đô suốt 60 ngày đêm, đập tan kế\n                                    hoạch đánh nhanh, thắng nhanh, “một đêm hoàn toàn làm chủ Hà Nội” của quân địch.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    60 ngày đêm khói lửa của quân dân Hà Nội mở đầu oanh liệt thời kỳ Toàn quốc kháng\n                                    chiến đã kết thúc thắng lợi, Trung đoàn Thủ đô an toàn rút khỏi Hà Nội, để cùng toàn\n                                    dân tiến hành cuộc kháng chiến trường kỳ, theo lời kêu gọi của Hồ Chủ Tịch. Trận Hà\n                                    Nội đông xuân 1946–1947 đã góp phần quan trọng trong việc bảo vệ cơ quan đầu não của\n                                    Việt Minh rút lên chiến khu an toàn, hoàn thành nhiệm vụ đánh trả, cầm cự, kìm chân\n                                    quân địch, buộc thực dân Pháp rơi vào thế bị động cả về chiến lược và chiến thuật,\n                                    chịu nhiều tổn thất và không đạt được mục tiêu đề ra.\n                                </span>\n                                <br>\n                                <br>\n                                <span>\n                                    60 ngày đêm lịch sử đầy bi hùng, như một khúc tráng ca được Nguyễn Huy Tưởng phục\n                                    dựng rất đỗi hoa lệ, trong sự giao thoa giữa cái dữ dội, kịch liệt của chiến tranh,\n                                    với cái lãng mạn, hào hoa rất riêng của người Hà Nội.\n                                </span>','7-cach-don-gian-lam-moi-khong-gian-song.jpg','2021-12-11','7-cach-don-gian-lam-moi-khong-gian-song.jpg',_binary '','2021-12-11 16:40:45',3,NULL,0,NULL,0,'luy-hoa','Tuy không thể thực hiện trọn vẹn áng văn chương mang tầm vóc lớn lao về Chín năm kháng chiến trường kỳ đầy oanh liệt, nhưng nhà văn Nguyễn Huy Tưởng đã kịp viết kịch bản phim “Lũy hoa” bù đắp phần nào tiếc nuối mà cuốn tiểu'),(9,'Tranh Lụa Việt Nam| Nguồn Gốc, Chất Liệu & Kỹ Thuật Sử Dụng Tranh Lụa','<h3>Những lý do nên chọn tranh sơn dầu để trang trí phòng ăn nhà bếp</h3>                                  <br>                                  <br>                                  <ul> <li>Những bức tranh sơn dầu được vẽ bằng tay hoàn toàn, mang đến nét đẹp mộc mạc bình dị nhưng không kém phần sang trọng</li><li>Mỗi tác phẩm đều mang một ý nghĩa riêng biệt, đồng thời đó nó còn có ý nghĩa phong thủy sâu sắc</li> <li>Tranh sơn dầu được biết đến với độ bền vượt trội. Màu sơn dầu có khả năng chống phai màu, chống ẩm tốt, dễ dàng lau chùi và bảo quản</li><li>Treo tranh sơn dầu trong phòng bếp vừa giúp tô điểm cho không gian, vừa mang lại cảm giác thư giãn khi thưởng thức bữa cơm cùng gia đình</li></ul><br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"><img src=\"https://linhtran.vn/wpcontent/uploads/2024/06/tranh-son-dau-treo-phong-bep-4.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Lý do nên chọn tranh sơn dầu cho phòng bếp</i></span></div></div><br><h3>Mẹo chọn tranh sơn dầu treo phòng bếp phù hợp </h3><br><span>Để chọn tranh sơn dầu treo phòng bếp phù hợp, bạn cần chú ý đến chủ đề và màu sắc mà mình sẽ sử dụng, đảm bảo có sự kết hợp hài hòa với nhau.</span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span> Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng. </span><br><h4>Những chủ đề tranh phù hợp với phòng ăn</h4><span>                                      Để chọn tranh sơn dầu treo phòng ăn bạn có thể lựa chọn các chủ đề liên quan về ẩm thực. Những món ăn hay các loại trái cây mọng nước, làm khơi gợi cảm giác thèm ăn và tạo bầu không khí tươi vui đến gia đình bạn.\n Chủ đề tranh thiên nhiên sẽ cho bạn cảm giác thỏa mái và dễ chịu, khi vừa ăn cùng với gia đình vừa có thể ngắm nhìn những bức tranh thiên nhiên hùng vĩ. Hơn thế nữa, nó còn giúp không gian nhà bếp trở nên xanh và trong lành hơn.\n Nếu bạn là một người yêu thích nấu ăn bạn có thể sử dụng các bức tranh liên quan về dụng cụ làm bếp. Điều này làm cho không gian bếp của bạn trở nên sống động và đầy cảm hứng.                                  </span> <br><div class=\"image\"><div class=\"thumbnail\" style=\"border: none; text-align: center;\"> <img src=\"https://linhtran.vn/wp-content/uploads/2024/06/tranh-son-dau-treo-phong-bep-1.jpg\" border=\"0\"><span style=\"color: #777777;\"><i>Ảnh: Instagram @iam_neih</i></span></div></div>','tranh-lua-viet-nam.jpg','2021-12-11','tranh-lua-viet-nam.jpg',_binary '','2021-12-11 16:50:08',3,NULL,0,'2024-06-23 10:51:38',3,'mua-thu-cua-cay-duong','Sau thành công được đón nhận của “Khu vườn mùa hạ”, Kazumi Yumoto tiếp tục mang đến cho người đọc những câu chuyện về trẻ nhỏ và quá trình trưởng thành của chúng. Bằng giọng văn tinh tế');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Description` varchar(2000) NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  `NameSearch` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (2,'Tranh Sơn Dầu','9-20x20.png','banner_sondau.jpg','Những bức tranh được sáng tác từ hàng trăm họa sĩ khác nhau trên toàn quốc tại Bán Tranh sẽ đem lại cho các bạn những nét đặc sắc, độc đáo và các cung bậc cảm xúc khác nhau khi xem tranh. Với nhiều thể loại tranh sơn dầu khác nhau như tranh phong cảnh, tranh hoa, tranh tĩnh vật, trừu tượng, phố cổ…được vẽ bằng chất liệu sơn dầu hay acrylic trên vải toan, đậm chất nghệ thuật được họa sĩ dày công lên ý tưởng hay sáng tạo. Từ những chuyến đi thực tế, những bức tranh cũng phản ánh chân thực những khung cảnh hay hiện vật thực tế nhưng qua những nét vẽ đầy chất nghệ thuật của họa sĩ mà đã tạo nên những bức tranh đẹp. Không chỉ từ những khoảng khắc từ cuộc sống thật, mà ngay từ những phút ý tưởng, niềm cảm hứng đến với họa sĩ, những bức tranh nghệ thuật đặc sắc cũng được ra đời chính từ niềm đam mê của người nghệ sĩ. Những bức tranh sơn dầu sẽ đem đến hết sự ngạc nhiên này đến ngác nhiên khác cho người xem bởi sự sáng tạo không có giới hạn của người họa sĩ, từ những bức tranh phong cảnh đồng quê, làng quê hết sức mộc mạc giản đơn đối với người xem cho đến những bức tranh hoa như toát lên vẻ đẹp thuần khiết, quý phái mà chỉ được thể hiện qua tranh hay cho đến những bức tranh trừu tượng mà không phải ai cũng có thể nhìn nhận được hết độ sâu nghệ thuật và tính sáng tạo trong mỗi bức tranh.','2021-09-20 19:09:21',3,NULL,0,'2021-11-12 14:59:21',1,'son-dau'),(3,'Tranh Phong Cảnh','5-20x20.png','banner_phongcanh.jpg','Tranh phong cảnh luôn được mọi người ưa thích tìm kiếm và sở hữu. Đây cũng là dòng tranh tạo cảm xúc vô bờ bến cho những họa sĩ sáng tạo những tác phẩm nghệ thuật đẹp. Trong tranh người xem có thể tìm thấy những cảnh vật hết sức đỗi gần gũi như phong cảnh đồng quê, làng quê, cây đa, giếng nước, sân đình đến những phong cảnh quen thuộc ở miền núi như cảnh buôn làng, núi rừng, cây xanh, phong cảnh biển, thác nước cho đến những khung cảnh mà bạn chưa thấy bao giờ, tất cả hiện lên đầy chất thơ và lãng mạn qua những nét vẽ tài tình của họa sĩ.','2021-09-21 20:17:20',3,NULL,0,'2021-10-12 19:57:05',3,'phong-canh'),(4,'Tranh Nghệ Thuật','2-20x20.png','banner_nghethuat.jpg','BanTranh có nhiều lựa chọn tranh treo tường nghệ thuật đẹp để bạn khám phá, được tổ chức theo các chủ đề khác nhau hoặc sắp xếp tranh theo họa sĩ. Tranh nghệ thuật là một phương tiện thể hiện cái đẹp từ thời cổ đại đến thời hiện đại, làm cho nó trở thành một đại sứ thực sự cho mỹ thuật. Ngay cả ngày nay, nó là hiện thân của nghệ thuật thị giác xuất sắc.','2021-09-21 20:18:06',3,'2024-06-22 22:43:44',3,'2021-10-12 19:56:49',3,'nghe-thuat'),(5,'Tranh Trừu Tượng','6-20x20.png','banner_truutuong.jpg','Tranh trừu tượng là sự kết hợp của màu sắc, đường nét, kết cầu, hoa văn, bố cục và quá trình gợi nên những sự thú vị trong thị giác người xem tranh. Trong tranh nghệ thuật trừu tượng các loại sĩ sử dụng những màu sắc để diễn tả những suy nghĩ của họ, để tạo nên những bức tranh nhiều ý nghĩa, nó có khả năng diễn tả những suy nghĩ mơ hồ nhưng lại không hoàn toàn diễn tả lên trên bức tranh một cách rõ ràng.','2021-09-21 20:19:41',3,NULL,0,'2021-10-12 19:57:37',3,'truu-tuong'),(6,'Tranh Sơn Mài','11-20x20.png','banner_sonmai.jpg','Tranh sơn mài đích thực là biểu tượng của sự tinh tế và tài năng vượt trội. Để tạo nên những tác phẩm nghệ thuật tinh xảo này, không chỉ đòi hỏi sự khéo léo kỹ thuật mà còn yêu cầu một quá trình công phu và tâm huyết từ người họa sĩ. Điểm đặc biệt của tranh sơn mài không chỉ nằm ở bề mặt trơn mịn không tì vết mà còn ở sự sáng tạo tinh tế trong từng nét vẽ và việc ứng dụng chất liệu đặc biệt, tạo nên sự độc đáo khiến người xem không chỉ ngắm nhìn mà còn muốn khám phá, trải nghiệm từng chi tiết, từng cảm xúc mà tác phẩm truyền đạt.','2021-09-21 20:22:24',3,NULL,0,'2021-10-12 19:57:49',3,'son-mai'),(7,'Tranh Dán Tường 3D','4-20x20.png','banner_dantuong3d.jpg','Tranh vốn là một thú chơi của rất nhiều người, mỗi thời mỗi cách chơi tranh mỗi khác nhau. Một trong những dòng tranh thịnh hành ngày nay đó là tranh dán tường 3D. Đây là một trong những dòng tranh có những ưu điểm vượt trội, về kích thước, hiệu ứng, chủ đề tranh vô cùng đa dạng, được rất nhiều người săn đón và ưa chuộng.','2021-09-21 20:24:22',3,NULL,0,'2021-12-10 09:17:10',3,'dan-tuong-3D');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Content` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Star` int NOT NULL,
  `User_Id` int NOT NULL,
  `Product_Id` int NOT NULL,
  `Date` date NOT NULL,
  `Status` char(1) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,'Đẹp ',5,1,6,'2024-06-19','1'),(2,'hươu',5,1,6,'2024-09-16','0');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Content` longtext NOT NULL,
  `Date` date NOT NULL,
  `Status` char(1) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (2,'Nguyễn Xuân Phú','phu2003@gmail.com','Trang web sịn sò','2021-12-05','1'),(3,'Nguyễn Minh Quân','quan@gmail.com','Page OK','2021-12-05','0'),(4,'Nguyễn Bá Trung Quân','quan2k3@gmail.com','OKOK','2021-12-05','0'),(5,'Hoàng Anh Quân','honag@gmail.com','OKOK','2021-12-05','1');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Code` varchar(10) NOT NULL,
  `Price` int NOT NULL,
  `Quality` int NOT NULL,
  `ApplyDay` date NOT NULL,
  `Expiration` date NOT NULL,
  `MoneyLimit` int NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (4,'Giảm giá 20.000đ khi mua đơn hàng trên 100.000đ','TAKH111',20000,3,'2021-12-09','2021-12-23',100000,'2021-12-09 19:25:21',3,'2024-06-23 14:46:54',3,NULL,0),(5,'Giảm giá 20.000đ cho đơn hàng trên 100.000đ','OTP1111',20000,3,'2021-12-15','2021-12-17',100000,'2021-12-15 21:45:19',3,'2024-06-23 14:46:57',3,NULL,0),(16,'Giảm giá 30.000đ cho đơn hàng trên 150.000đ','GSVV202112',30000,5,'2021-12-17','2021-12-23',150000,'2021-12-17 15:22:15',3,'2024-06-23 14:46:52',3,NULL,0),(17,'Giảm giá 20.000đ khi mua đơn hàng trên 100.000đ','OTP232003',20000,9,'2024-06-21','2024-07-07',100000,'2024-06-23 14:46:33',3,NULL,0,NULL,0),(18,'giảm cực sốc','OOOOO12',100000,30,'2024-06-22','2024-06-25',100000,'2024-06-23 17:59:03',1,NULL,0,NULL,0);
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Department` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Position` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Phone` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `StartDay` date NOT NULL,
  `Salary` int NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  `User_Id` int NOT NULL,
  `Image` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `User_Id` (`User_Id`),
  CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Software 4.2','Fresher Development','0123456789','2021-03-05',13000000,'2021-09-10 10:50:19',0,NULL,0,NULL,0,3,NULL),(2,'Software 3.1','Web Development','0333666111','2021-01-08',9300000,'2021-09-10 11:14:52',3,NULL,0,NULL,0,1,NULL);
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `User_Id` int NOT NULL,
  `Product_Id` int NOT NULL,
  `Date` date NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Product_Id` (`Product_Id`),
  CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
INSERT INTO `favorites` VALUES (4,1057,6,'2024-06-23'),(6,1,6,'2024-09-16'),(7,1053,1,'2024-11-24');
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `informationshop`
--

DROP TABLE IF EXISTS `informationshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `informationshop` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Active` bit(1) DEFAULT b'0',
  `TimeOpen` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Phone` varchar(15) NOT NULL,
  `Fax` varchar(15) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `LogoFooter` varchar(100) NOT NULL,
  `Address` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `informationshop`
--

LOCK TABLES `informationshop` WRITE;
/*!40000 ALTER TABLE `informationshop` DISABLE KEYS */;
INSERT INTO `informationshop` VALUES (1,'Ecart Shop',_binary '','7:00 AM đến 11:00 PM','logo.jpg','0923355522','0923456789','cskh@hotro.ecart.vn','logo.jpg','Tổ Văn Trì 4, Minh Khai, Bắc Từ Liêm, Hà Nội','2021-09-29 15:58:27',3,NULL,0,'2021-09-30 16:48:42',3),(2,'Shop Cart',_binary '\0','11:00 AM đến 11:00 PM','logo.jpg','0912233498','0901230406','demo@gmail.com','logo.jpg','Tổ Văn Trì 4, Minh Khai, Bắc Từ Liêm, Hà Nội','2021-09-29 15:59:52',3,NULL,0,'2021-09-30 16:40:53',3);
/*!40000 ALTER TABLE `informationshop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufactures` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Logo` varchar(100) NOT NULL,
  `Banner` varchar(100) NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufactures`
--

LOCK TABLES `manufactures` WRITE;
/*!40000 ALTER TABLE `manufactures` DISABLE KEYS */;
INSERT INTO `manufactures` VALUES (2,'Nguyễn Thanh Nhàn','NhanAnh.jpg','NhanSign.jpg','Ngoài “xnhan00”, D-Open được biết Thanh Nhàn còn có một biệt danh khác mà mọi người hay thường gọi là “Nhàn lượm lá”. Biệt danh này xuất phát từ chính thói quen lượm lá của anh chàng. Đi đến đâu, anh đều cẩn thận nhặt nhạnh vài chiếc lá con con rồi ép vào sách, sau đó đem về. Lâu lâu lấy ra làm mẫu vẽ, hoặc trang trí góc làm việc của mình. Đôi khi “lượm lá” chỉ là để giữ lại điều gì đó – kỉ niệm, hay lưu dấu một bước chân trên cuộc hành trình.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(3,'Tạ Lan Hạnh','HanhAnh.jpg','HanhSign.jpg','Trẻ, nhiệt huyết, tài năng và đặc biệt – đó là những gì người ta biết về cô nàng họa sĩ sinh năm 1991 – Tạ Lan Hạnh.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(4,'Killien Huynh','HuynhAnh.jpg','HuynhSign.jpg','Là một người nhẹ nhàng, yêu mèo và khá điềm tĩnh, Huỳnh Kim Liên (Killien Huynh) cũng giống như những bức tranh của cô ấy, luôn mang một cảm giác thư thái và lãng mạn. Đam mê vẽ minh họa, đặc biệt nhiều cảm hứng với sách thiếu nhi và nhân vật, Killien từ  một người học trái ngành trở thành họa sĩ, mang tác phẩm Việt ra thế giới.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(5,'Nguyễn Thành Vũ','VuAnh.jpg','VuSign.jpg','Chàng hoạ sĩ tự do sinh năm 1993, yêu quý trẻ em và mơ ước vẽ được thật nhiều sách tranh thiếu nhi Việt Nam. Mong muốn của Vũ là nét vẽ và câu chuyện của mình sẽ đến được với nhiều em nhỏ ở vùng sâu vùng xa, nơi các em không có nhiều điều kiện để đọc sách.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(6,'Trần Công Nguyên','NguyenAnh.jpg','NguyenSign.jpg','Trong những ngày qua, bộ tranh về làng quê Bắc bộ mộc mạc của chàng hoạ sĩ trẻ Trần Công Nguyên (30 tuổi) làm nhiều người cảm thấy bồi hồi nhớ về một vùng quê bình yên, gắn liền với tuổi thơ.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(7,'Trần Thảo Hiền','HienAnh.jpg','HienSign.jpg','Với những chủ đề truyền thống: tĩnh vật, phong cảnh, chân dung, bộ sưu tập của hoạ sĩ Trần Thảo Hiền đã sáng tạo một không gian hình ảnh không biên giới giữa hai nền hội hoạ Á - Âu.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(8,'Trần Công Hiến','HiensAnh.jpg','HiensSign.jpg','Ngoài vẽ tranh, Trần Công Hiến còn dạy vẽ ở Đồng Tháp. Trong buổi khai mạc hôm qua, rất đông học trò của Trần Công Hiến từ Đồng Tháp lên Sài Gòn chúc mừng thầy. Người hâm mộ Trần Công Hiến và tác phẩm của ông khá đông, tiêu biểu là nữ nhà thơ nổi tiếng Thu Nguyệt quê Đồng Tháp hiện làm việc tại TP.HCM.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(9,'Trần Đình Khương','KhuongAnh.jpg','KhuongSign.jpg','Tác giả là một trong những gương mặt hội họa trẻ Hà Nội được biết nhiều trong làng mỹ thuật Việt Nam khoảng 10 năm trở lại đây. Giới thiệu 40 tác phẩm sơn mài màu đẹp, đằm thắm, tác giả đã đưa người xem gặp lại khung cảnh của một làng quê Việt Nam vừa êm ả thanh bình, vừa xôn xao, nồng nàn hương sắc.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(10,'Đoàn Thúy Hạnh','Hanh2Anh.jpg','Hanh2Sign.jpg','Trong triển lãm cá nhân đầu tiên tại TP.HCM của cặp đôi họa sĩ người Hà Nội Trần Đình Khương – Đoàn Thúy Hạnh, các tác phẩm tranh sơn mài về chủ đề cá chọi, cá chép cùng tranh chân dung trẻ thơ và những loài hoa gắn liền với ký ức tuổi thơ đã được giới thiệu đến công chúng.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3),(11,'Nguyễn Bá Thanh','ThanhAnh.jpg','ThanhSign.jpg','Họa sĩ Nguyễn Bá Thanh sinh năm 1999, tại Thái Bình, tốt nghiệp trường Đại học Sư phạm nghệ thuật Trung ương. Hiện anh là họa sĩ tự do, thành viên của Câu lạc bộ màu nước Hà Nội. Bá Thanh đã từng tham gia nhiều triển lãm và cuộc thi về hội họa trong nước và quốc tế.','2021-09-21 20:08:22',3,NULL,0,'2021-12-15 07:51:33',3);
/*!40000 ALTER TABLE `manufactures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menuone`
--

DROP TABLE IF EXISTS `menuone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuone` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NameSearch` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Cate_Id` int NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Cate_Id` (`Cate_Id`),
  CONSTRAINT `menuone_ibfk_1` FOREIGN KEY (`Cate_Id`) REFERENCES `categories` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuone`
--

LOCK TABLES `menuone` WRITE;
/*!40000 ALTER TABLE `menuone` DISABLE KEYS */;
INSERT INTO `menuone` VALUES (1,'Tranh phong cảnh đồng quê','Tranh phong cảnh đồng quê là một dòng tranh luôn được ưa chuộng bởi nhiều người, bởi trong mỗi người đều có hình ảnh tuổi thơ gắn liền với những cây đa, bến nước, sân đình, dòng sông hay lũy tre xanh đong đưa theo gió, cánh cò bay lượn trên những cánh đồng lúa chín vàng ươm. Đó cúm chính là những nét đặc trưng của làng quê nông thôn Việt Nam mà đã được thổi hồn vào những bức tranh của các họa sĩ tài năng. Tại BanTranh.com Chúng tôi đang giới thiệu những bức tranh đồng quê đặc sắc như tranh vẽ đồng quê, làng quê, phong cảnh quê hương.','dong-que',3,'2024-03-24 00:00:00',1,'2024-03-24 20:57:19',0,'2024-03-24 20:57:19',0),(2,'Tranh phong cảnh vùng cao','Nhắc đến tranh phong cảnh, ta thường hay nghĩ tới hai đề tài là tranh phong cảnh biển và tranh vùng cao. Hai đề tài này sở hữu nét đẹp đối lập với nhau. Nếu biển cả là nét đẹp tự do, mênh mông rộng lớn, không có khuôn khổ thì ngược lại, những bức vẽ thiên nhiên vùng cao lại mang vẻ đẹp phóng khoáng, nên thơ, đầy sức sống và khuôn khổ. Núi rừng là mái nhà che chở cuộc sống con người, đồi núi bảo bọc cuộc sống nhân dân nơi đây, giúp họ tránh xa khỏi những nguy hiểm của tự nhiên và cuộc sống.','vung-cao',3,'2024-03-24 00:00:00',1,'2024-03-24 20:57:19',0,'2024-03-24 20:57:19',0),(3,'Tranh phong cảnh biển','Biển cả là một đề tài vô tận của những người họa sĩ. Thật vậy, từ hàng ngàn năm trước, ngay từ những ngày đầu tiên của nghệ thuật hội họa, từ những nét vẽ đơn sơ nhất, ta có thể thấy được biển cả đã được người xưa khắc họa trong những tác phẩm đầu tiên của nhân loại. Biển cũng là cội nguồn của sự sống, là cái nôi của nhân loại, chính vì vậy biển lại càng trở nên đặc biệt và ý nghĩa hơn đối với chúng ta.','bien',3,'2024-03-24 20:59:41',1,'2024-03-24 20:59:41',0,'2024-03-24 20:59:41',0),(4,'Tranh phố cổ','Thời gian là kẻ thù của nhân loại, không một thứ gì có thể thoát được nó. Dưới sự tác động của thời gian, bất kể loài sinh vật nào rồi cũng sẽ phải đối mặt với cửa tử của mình, loài người cũng vậy. Lịch sử nhân loại là cả một quá trình phát triển và lụi tàn, trải qua hàng nghìn năm, kể cả những đế chế huy hoàng trong lịch sử cũng sẽ biến mất, chỉ còn được biết đến qua sử sách. Tuy nhiên, thời gian đã không thể xóa sạch những tàn dư của nền văn minh cũ. Trải qua bao biến động, nhân loại vẫn may mắn giữ gìn và tìm thấy những nền văn minh cổ đại, hay nói đúng hơn là những gì còn sót lại của nền văn minh cũ – những kiến trúc cổ. Chúng chính là những minh chứng rõ ràng nhất về sự tồn tại và phát triển của loài người trong quá khứ.','pho-co',3,'2024-03-24 21:01:44',1,'2024-03-24 21:01:44',0,'2024-03-24 21:01:44',0),(5,'Ngõ nhỏ, phố nhỏ','Chắc hẳn bạn đã từng nghe câu “Hà Nội 36 phố phường” phải không? Thật vậy, 36 phố phường hay phố cổ Hà Nội là cách gọi của kinh đô Thăng Long thời Lý – Trần. Khi đó, khu dân cư này là nơi tập trung đông đúc, là điểm mua bán nhộn nhịp, cũng là nơi sinh ra của những làng nghề nôi tiếng. Chính vì lẽ đó, cái tên “Hàng” đã sinh ra, là cách gọi ám chỉ những phố nghề đặc trưng, mang đậm nét truyền thống. Ở Quảng Nam, phố cổ Hội An cũng là một di tích lịch sử, một nhân chứng đã tồn tại va quan sát quá trình phát triển của nơi đây trong suốt bao năm tháng.','ngo-nho-pho-nho',3,'2024-03-24 21:03:57',1,'2024-03-24 21:03:57',0,'2024-03-24 21:03:57',0),(6,'Tranh núi rừng','Núi rừng là một đề tài không còn xa lạ đối với người dân Việt Nam. núi rừng tình là nơi đầu tiên đánh dấu sự xuất hiện của nền văn minh Việt Nam. Từ hàng nghìn năm trước, người dân Việt Nam đã sinh sống và phát triển nền văn minh của mình. Quá trình này đã được khắc họa và lưu truyền bằng rất nhiều cách thức khác nhau trong dân gian, qua đó có thể thấy được núi rừng đóng góp to lớn như nào đối với người dân đất Việt.','nui-rung',3,'2024-03-24 21:03:57',1,'2024-03-24 21:03:57',0,'2024-03-24 21:03:57',0),(7,'Thiếu nữ','Nét đẹp trong văn hóa truyền thống của người Việt Nam đó là hình ảnh của những người thiếu nữ đại diện cho những gì thanh xuân nhất của cuộc đời trong vẻ đẹp tinh khôi không vấn bụi trần. Người thiếu nữ thường xuất hiện trong thơ ca, văn học và đặc biệt là trong các bức họa đó là đề tài muôn thuở của các họa sĩ, hình ảnh thiếu nữ trong các bức họa thường mang vẻ đẹp thuần khiết, tinh khôi, trong sáng trong nét dịu dàng thướt tha.','thieu-nu',2,'2024-03-24 21:10:54',1,'2024-03-24 21:10:54',0,'2024-03-24 21:10:54',0),(8,'Tình yêu','Một trong những chủ đề mang lại dấu ấn chặt cảm xúc mạnh mẽ đối với người xem trong hội họa đó chính là tình yêu. Đó không chỉ là tình yêu đôi lứa mà còn là tình mẫu tử, tình anh em, những tình cảm đó cũng là những tình yêu sâu sắc mà chúng ta cần trân trọng.','tinh-yeu',2,'2024-03-24 21:10:54',1,'2024-03-24 21:10:54',0,'2024-03-24 21:10:54',0),(9,'Tranh phật giáo','Tranh Phật thường được vẽ bằng chất liệu sơn dầu được pha chế một cách khéo léo để tạo ra những bức tranh ấn tượng nhất. Tranh vẽ Phật thường được treo ở những nơi trang trọng trong nhà nhà hay trong phòng khách hay phòng bàn thờ.','phat-giao',2,'2024-03-24 21:10:54',1,'2024-03-24 21:10:54',0,'2024-03-24 21:10:54',0),(10,'Tranh hoa','Hoa luôn là đề tài muôn thuở của thơ ca và đặc biệt được nhắc đến nhiều nhất trong nghệ thuật vẽ tranh, hoa trở thành một biểu tượng như một thú chơi muôn thuở cho những họa sĩ đam mê nghệ thuật. Những bức vẽ về tranh thường vẽ về các loại hoa như hoa sen, hoa mẫu đơn, hoa đào, hướng dương, hoa hồng,… Những loại hoa ấy thường mang những vẻ đẹp thuần khiết, hay mang một đặc điểm tính cách nào đó của tác giả. Tranh hoa thường được họa sĩ thổi hồn vào những bông hoa trở nên sống động, đầy màu sắc gợi hình và đầy sinh khí.','hoa',2,'2024-03-24 21:10:54',1,'2024-03-24 21:10:54',0,'2024-03-24 21:10:54',0),(11,'Tranh tĩnh vật','Trong mĩ thuật, người ta dùng thuật ngữ “Tĩnh vật” để nói một loại tranh, thường vẽ hoa quả, đồ vật được sắp xếp theo bố cục, ánh sáng thích hợp và được đôi bàn tay họa sĩ tái hiện lên bằng cảm xúc riêng của mình. Tranh tĩnh vật dù vẽ màu hay vẽ chì thì đều mang lại cho người xem những cảm xúc, suy nghĩ khác nhau. Tĩnh vật màu có vẻ đẹp sống động, chân thực tùy vào loại màu người họa sĩ dùng. Trong khi đó tĩnh vật vẽ bằng chì lại có những nét thô mộc, giản dị riêng của nét chì.','tinh-vat',4,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0),(12,'Tranh khắc gỗ','Việt Nam nổi tiếng với nền văn hóa lâu đời và đa dạng, trong đó tranh khắc gỗ đã trở thành một biểu tượng đặc trưng của nghệ thuật dân gian. Tranh khắc gỗ không chỉ là tác phẩm nghệ thuật tinh xảo mà còn mang trong mình giá trị văn hóa và lịch sử đặc biệt. Đó là một hình thức nghệ thuật độc đáo tạo nên sự tưởng tượng và kỹ năng tài hoa của những nghệ nhân Việt.','khac-go',4,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0),(13,'Tranh khỏa thân','Tranh khỏa thân là một biểu hiện nghệ thuật đặc trưng, mang lại nét đẹp và ấn tượng đặc biệt trong Nghệ thuật Việt Nam. Những tác phẩm tranh khỏa thân không ngại thể hiện sự táo bạo và trần trụi của con người, đem đến cho người xem một cái nhìn chân thật về vẻ đẹp và tâm hồn.','khoa-than',4,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0),(14,'Tranh thủy mặc','Trung Quốc là khởi nguồn của rất nhiều các loại hình nghệ thuật đương đại ngày nay và tranh thủy mặc là một trong số đó. Tranh thủy mặc đã xuất hiện từ thế kỷ VII vào thời đường tại Trung Quốc, phát triển cùng với cả nghệ thuật thư pháp. Giống như thư pháp, tranh thủy mặc chỉ chủ yếu tập trung vào sắc thái là hai màu trắng đen được vẽ trên giấy và lụa bằng bút lông. Xuyên suốt lịch sử tranh thủy mặc đã khẳng định chỗ đứng của mình trong nghệ thuật hội họa bởi giá trị cả về nội dung và nghệ thuật cũng như những dấu ấn văn hóa mà mà nó đã để lại lại trong suốt thời gian tồn tại và phát triển.','thuy-mac',4,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0),(15,'Tranh mài hoa sen','Trong thế giới nghệ thuật Tranh Sơn Mài Hoa Sen của Việt Nam, hình ảnh của bông sen không chỉ là một biểu tượng của vẻ đẹp ngoại hình mà còn là sự biểu hiện của sự thuần khiết và tinh tế trong tâm hồn con người. Những tác phẩm tranh không chỉ là những bức tranh, mà còn là hành trình duyên dáng đưa người xem vào một thế giới đẹp như mơ, nơi mà nét đẹp tự nhiên và tâm trạng tĩnh lặng hòa quyện.','tranh-mai-hoa-sen',6,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0),(16,'Tranh mài hoa chuối','Tranh sơn mài hoa chuối không chỉ là tác phẩm nghệ thuật đẹp mắt, mà còn là biểu hiện của sự tinh khôi và sâu lắng. Bức tranh thường chứa đựng những chi tiết nhỏ về cánh hoa và lá được vẽ một cách tỉ mỉ, tạo nên vẻ tự nhiên và chân thực. Mỗi nét vẽ trên tranh đều thể hiện sự khéo léo của nghệ nhân.','tranh-mai-hoa-chuoi',6,'2024-03-24 21:48:56',1,'2024-03-24 21:48:56',0,'2024-03-24 21:48:56',0);
/*!40000 ALTER TABLE `menuone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menutwo`
--

DROP TABLE IF EXISTS `menutwo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menutwo` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `NameSearch` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Menu1_Id` int NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Menu1_Id` (`Menu1_Id`),
  CONSTRAINT `menutwo_ibfk_1` FOREIGN KEY (`Menu1_Id`) REFERENCES `menuone` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menutwo`
--

LOCK TABLES `menutwo` WRITE;
/*!40000 ALTER TABLE `menutwo` DISABLE KEYS */;
/*!40000 ALTER TABLE `menutwo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Code` varchar(6) NOT NULL,
  `Product_Id` int NOT NULL,
  `Address_Id` int NOT NULL,
  `Discount_Id` int DEFAULT NULL,
  `Quality` int NOT NULL,
  `Date` date NOT NULL,
  `Method` char(1) NOT NULL,
  `Status` char(1) NOT NULL,
  `Comment` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Product_Id` (`Product_Id`),
  KEY `Address_Id` (`Address_Id`),
  KEY `Discount_Id` (`Discount_Id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`Product_Id`) REFERENCES `products` (`Id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Address_Id`) REFERENCES `address` (`Id`),
  CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`Discount_Id`) REFERENCES `discount` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (47,'871918',1,1,NULL,1,'2024-06-23','1','2',''),(48,'810782',8,1,NULL,1,'2024-06-23','1','0',''),(49,'516216',6,67,NULL,1,'2024-06-23','1','3',''),(50,'418691',6,67,17,1,'2024-06-23','1','3',''),(51,'880179',4,67,NULL,200,'2024-06-23','1','2',''),(52,'411382',1,1,17,1,'2024-06-23','1','0',''),(53,'976863',1,64,NULL,1,'2024-06-23','1','2',''),(54,'870285',1,64,NULL,1,'2024-06-23','1','3',''),(55,'250047',1,64,NULL,1,'2024-09-16','1','3',''),(56,'140730',1,64,NULL,1,'2024-12-11','1','3',''),(57,'404949',1,64,NULL,1,'2024-12-11','1','2',''),(58,'975650',1,64,NULL,1,'2024-12-12','1','2','');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Name` longtext NOT NULL,
  `Price` int NOT NULL,
  `Quantity` int NOT NULL,
  `Views` int DEFAULT '0',
  `ShortDescription` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Description` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Specification` varchar(2000) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Image1` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Image2` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Image3` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Image4` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Image5` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Active` bit(1) NOT NULL,
  `Manu_Id` int NOT NULL,
  `Cate_Id` int NOT NULL,
  `Menu1_Id` int DEFAULT NULL,
  `Menu2_Id` int DEFAULT NULL,
  `NameSearch` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonCreate` int NOT NULL,
  `DeleteDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonDelete` int DEFAULT '0',
  `UpdateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `PersonUpdate` int DEFAULT '0',
  `Sales` int DEFAULT '0',
  PRIMARY KEY (`Id`),
  KEY `Manu_Id` (`Manu_Id`),
  KEY `Cate_Id` (`Cate_Id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`Manu_Id`) REFERENCES `manufactures` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`Cate_Id`) REFERENCES `categories` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'P1','Sắc hồng',190000,23,43,'Chất liệu: acrylic trên canva/nKích thước: 30cm x 40cm','Màu đỏ của cánh hoa hồng biểu tượng cho tình yêu nống cháy và cho sự quyến rũ ngọt ngào.','Chất liệu: acrylic trên canva/nKích thước: 30cm x 40cm/n Trang họa sĩ: Tranh sáng tác, độc bản và có giấy tác quyền của họa sĩ','SacHong.jpg','SacHong.jpg','SacHong.jpg','SacHong.jpg','SacHong.jpg',_binary '',2,2,10,NULL,'sac hong','2021-10-11 17:08:38',3,NULL,0,NULL,0,0),(2,'TN01','Anh em mèo con',14600000,3,24,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>20x30 cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Một bức tranh nho nhỏ vẽ anh em nhà mèo con của nhà mình','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>20x30 cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Nguyễn Thanh Nhàn</td>\n											</tr>\n										</tbody>\n									</table>','anhemmeocon.jpg','anhemmeocon.jpg','anhemmeocon.jpg','anhemmeocon.jpg','anhemmeocon.jpg',_binary '',2,2,0,0,'anh em meo con','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(3,'TN02','Blooming Pink',720000,179,65,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n										</tbody>\n                                        </table>','In giclee (Fine Art Giclee Print) chất lượng cao trên giấy mỹ thuật (Archival fine art paper) 320gsm, 100% cotton, với mực pigment.h','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Nguyễn Thanh Nhàn</td>\n											</tr>\n										</tbody>\n									</table>','BloomingPink.jpg','BloomingPink.jpg','BloomingPink.jpg','BloomingPink.jpg','BloomingPink.jpg',_binary '',2,2,10,0,'blooming pink','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(4,'LH01','Người Bạn Tuyệt Vời',200000,299,4,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n										</tbody>\n                                        </table>','In giclee (Fine Art Giclee Print) chất lượng cao trên giấy mỹ thuật (Archival fine art paper) 320gsm, 100% cotton, với mực pigment.h','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Tạ Lan Hạnh</td>\n											</tr>\n										</tbody>\n									</table>','NguoiBanTuyetVoi.jpg','NguoiBanTuyetVoi.jpg','NguoiBanTuyetVoi.jpg','NguoiBanTuyetVoi.jpg','NguoiBanTuyetVoi.jpg',_binary '',2,2,10,0,'nguoi ban tuyet voi','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(5,'KH01','Phong Cảnh',2000000,1,4,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n										</tbody>\n                                        </table>','In giclee (Fine Art Giclee Print) chất lượng cao trên giấy mỹ thuật (Archival fine art paper) 320gsm, 100% cotton, với mực pigment.h','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Kellien Huỳnh</td>\n											</tr>\n										</tbody>\n									</table>','PhongCanhCuaKellienHuynh.jpg','PhongCanhCuaKellienHuynh.jpg','PhongCanhCuaKellienHuynh.jpg','PhongCanhCuaKellienHuynh.jpg','PhongCanhCuaKellienHuynh.jpg',_binary '',4,3,2,0,'phong canh','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(6,'KH02','Con Hươu',200000,9,12,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Hãy yêu thương động vật','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Kellien Huỳnh</td>\n											</tr>\n										</tbody>\n									</table>','ConHuouCuaKellienHuynhh.jpg','ConHuouCuaKellienHuynhh.jpg','ConHuouCuaKellienHuynhh.jpg','ConHuouCuaKellienHuynhh.jpg','ConHuouCuaKellienHuynhh.jpg',_binary '',4,4,0,0,'con huou','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(7,'KH03','Khu rừng',6000000,1,9,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n										</tbody>\n                                        </table>','\"Cuốn sách mùa hè\" là cuốn sách tôi đang minh họa như một dự án cá nhân.\nĐây là cuốn sách dành cho thanh thiếu niên và người lớn, kể về mùa hè trên các hòn đảo Phần Lan.\nTrong dự án này, tôi đã cố gắng giữ không khí minh họa của tác giả\nvà để thêm một cái gì đó thực tế và hiện đại\nđể tạo ra hình ảnh mới của cuốn sách. ','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Art Print</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>21x29.7cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Kellien Huỳnh</td>\n											</tr>\n										</tbody>\n									</table>','NuiRungKellienHuynh.jpg','NuiRungKellienHuynh.jpg','NuiRungKellienHuynh.jpg','NuiRungKellienHuynh.jpg','NuiRungKellienHuynh.jpg',_binary '',4,3,6,0,'khu rung','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(8,'TCN01','An nhiên',6000000,0,2,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x90cm</td>\n											</tr>\n										</tbody>\n                                        </table>','\"Cảm xúc tĩnh lặng trong tác phẩm \"An nhiên\" - họa sĩ Trần Nguyên','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x9cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Công Nguyên</td>\n											</tr>\n										</tbody>\n									</table>','TranhHoaSonDauCuaTranNguyen.png','TranhHoaSonDauCuaTranNguyen.png','TranhHoaSonDauCuaTranNguyen.png','TranhHoaSonDauCuaTranNguyen.png','TranhHoaSonDauCuaTranNguyen.png',_binary '',6,2,10,0,'an nhien','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(9,'TCN02','Em và hoa',6000000,5,10,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x90cm</td>\n											</tr>\n										</tbody>\n                                        </table>','EmVaHoaCuaTranNguyen.png','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x90cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Công Nguyên</td>\n											</tr>\n										</tbody>\n									</table>','EmVaHoaCuaTranNguyen.png','EmVaHoaCuaTranNguyen.png','EmVaHoaCuaTranNguyen.png','EmVaHoaCuaTranNguyen.png','EmVaHoaCuaTranNguyen.png',_binary '',6,2,4,0,'em va hoa','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(10,'TCN02','Nắng ấm mùa đông',6000000,3,4,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Hình ảnh căn nhà  ba gian hai chái đặc trưng của làng quê bắc bộ trong tác phẩm \"Nắng ấm mùa đông\" - họa sĩ Trần Nguyên','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Công Nguyên</td>\n											</tr>\n										</tbody>\n									</table>','NangAmMuaDongCuaTranNguyen.png','NangAmMuaDongCuaTranNguyen.png','NangAmMuaDongCuaTranNguyen.png','NangAmMuaDongCuaTranNguyen.png','NangAmMuaDongCuaTranNguyen.png',_binary '',6,2,1,0,'nang am mua dong','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(11,'TCN04','Tết Quê',6000000,1,1,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Làng quê với cảnh ngày Tết cổ truyền vui tươi, sum vầy của những thành viên trong gia đình cùng các hoạt động truyền thống của người Việt Nam.','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Công Nguyên</td>\n											</tr>\n										</tbody>\n									</table>','TetQue.png','TetQue.png','TetQue.png','TetQue.png','TetQue.png',_binary '',6,2,1,0,'tet que','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(12,'TH01','Nắng Xuân',6000000,1,1,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x90cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Nắng xuân, 2018, sơn dầu','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>70x90cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Thảo Hiền</td>\n											</tr>\n										</tbody>\n									</table>','NangXuanThaoHien.png','NangXuanThaoHien.png','NangXuanThaoHien.png','NangXuanThaoHien.png','NangXuanThaoHien.png',_binary '',6,2,7,0,'nang xuan','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(13,'TH02','Buồng chuối',6000000,1,2,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Buồng chuối, 2019, sơn dầu','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x120cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Thảo Hiền</td>\n											</tr>\n										</tbody>\n									</table>','BuongChuoiThaoHien.png','BuongChuoiThaoHien.png','BuongChuoiThaoHien.png','BuongChuoiThaoHien.png','BuongChuoiThaoHien.png',_binary '',6,2,11,0,'buong chuoi','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(14,'DK01','Nắng',6000000,1,2,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x80cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Nắng (80x80cm) của hoạ sĩ Trần Đình Khương','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn dầu</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x80cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Đinh Khương</td>\n											</tr>\n										</tbody>\n									</table>','NangTranDinhKhuong.png','NangTranDinhKhuong.png','NangTranDinhKhuong.png','NangTranDinhKhuong.png','NangTranDinhKhuong.png',_binary '',9,6,0,0,'nang','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(15,'DK02','Vọng Nguyệt',6000000,1,1,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>100x100cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Vọng Nguyệt (100x100cm) của hoạ sĩ Trần Đình Khương','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>100x100cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Trần Đinh Khương</td>\n											</tr>\n										</tbody>\n									</table>','VongNguyetTDK.png','VongNguyetTDK.png','VongNguyetTDK.png','VongNguyetTDK.png','VongNguyetTDK.png',_binary '',9,6,0,0,'vong nguyet','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(16,'DTH01','Trong khu vườn tuổi thơ',6000000,1,1,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x160cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Vọng Nguyệt (100x100cm) của hoạ sĩ Trần Đình Khương','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x160cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Đoàn Thúy Hạnh</td>\n											</tr>\n										</tbody>\n									</table>','TrongKhuVuonTuoiThoDTH.png','TrongKhuVuonTuoiThoDTH.png','TrongKhuVuonTuoiThoDTH.png','TrongKhuVuonTuoiThoDTH.png','TrongKhuVuonTuoiThoDTH.png',_binary '',10,6,7,0,'trong khu vuon tuoi tho','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0),(17,'DTH02','Tĩnh vật hoa cúc mùa thu',6000000,6,3,'<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông số chi tiết</strong></td>\n											</tr>\n										</thead>\n                                        <tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x80cm</td>\n											</tr>\n										</tbody>\n                                        </table>','Tác phẩm: Tĩnh vật hoa cúc mùa thu (80x80cm) của hoạ sĩ Đoàn Thuý Hạnh','<table class=\"table table-bordered\">\n										<thead>\n											<tr>\n												<td colspan=\"2\"><strong>Thông tin bức tranh</strong></td>\n											</tr>\n										</thead>\n										<tbody>\n											<tr>\n												<td>Chất liệu:</td>\n												<td>Sơn mài</td>\n											</tr>\n											<tr>\n												<td>Kích thước</td>\n												<td>80x80cm</td>\n											</tr>\n                                            <tr>\n												<td>Tác giả</td>\n												<td>Đoàn Thúy Hạnh</td>\n											</tr>\n										</tbody>\n									</table>','TinhVatHoaCucMuaThu.png','TinhVatHoaCucMuaThu.png','TinhVatHoaCucMuaThu.png','TinhVatHoaCucMuaThu.png','TinhVatHoaCucMuaThu.png',_binary '',10,6,11,0,'tinh vat hoa cuc mua thu','2021-10-10 17:30:26',3,NULL,0,'2021-12-07 19:45:01',3,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN'),(3,'ROLE_DIRECTOR');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_role`
--

DROP TABLE IF EXISTS `user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_role` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `User_Id` int NOT NULL,
  `Role_Id` int NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `User_Id` (`User_Id`),
  KEY `Role_Id` (`Role_Id`),
  CONSTRAINT `user_role_ibfk_1` FOREIGN KEY (`User_Id`) REFERENCES `users` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `user_role_ibfk_2` FOREIGN KEY (`Role_Id`) REFERENCES `roles` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1040 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_role`
--

LOCK TABLES `user_role` WRITE;
/*!40000 ALTER TABLE `user_role` DISABLE KEYS */;
INSERT INTO `user_role` VALUES (1,1,1),(2,2,2),(3,3,3),(1038,1053,1),(1039,1057,1);
/*!40000 ALTER TABLE `user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(125) NOT NULL,
  `FullName` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `Sex` bit(1) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Subscribe` bit(1) DEFAULT b'0',
  `CreateDay` datetime DEFAULT CURRENT_TIMESTAMP,
  `DeleteDay` datetime DEFAULT NULL,
  `PersonDelete` int DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1058 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'phuit@gmail.com','1234567','Nguyễn Xuân Phú',_binary '\0',NULL,_binary '\0','2024-09-09 11:52:28',NULL,0),(2,'quanit@gmail.com','1234567','Nguyễn Bá Quân',_binary '\0',NULL,_binary '','2024-09-09 12:04:34',NULL,0),(3,'trungit@gmail.com','1234567','Nguyễn Trung Quân',_binary '\0','2003-03-02',_binary '\0','2024-09-10 10:14:20',NULL,0),(1053,'anhquan2003@gmail.com','1234567','Hoàng Anh Quân',_binary '\0',NULL,_binary '\0','2024-10-29 14:13:26',NULL,0),(1057,'quangkedo2003@gmail.com','quang232003','Nguyễn Minh Quang',_binary '','2003-03-02',_binary '\0','2024-06-21 00:46:40',NULL,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24 22:41:33

CREATE DATABASE  IF NOT EXISTS `danielobarecareers` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `danielobarecareers`;
-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: aws.connect.psdb.cloud    Database: danielobarecareers
-- ------------------------------------------------------
-- Server version	8.0.34-PlanetScale

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
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '3b85d69d-c54d-11ef-b8a1-765f7c20b8dd:1-67,
469fa7b7-aa3d-11ee-8dae-ea5182e027db:1-48,
46c42bd1-aa3d-11ee-a274-365fa2fbc210:1-155,
d228dfbe-1868-11ef-9efa-4a3e82042374:1-79,
df74863f-c290-11ee-ac55-8ebf3561176d:1-47,
df7d94c6-c290-11ee-8cea-dafe9dfd0c9a:1-132,
fe533973-b2c4-11ee-9720-fea59a6cb452:1-224,
fe5605c3-b2c4-11ee-94f6-1a9142ff3974:1-143';

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(250) NOT NULL,
  `location` varchar(250) NOT NULL,
  `salary` int DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `responsibilities` varchar(4000) DEFAULT NULL,
  `requirements` varchar(4000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
INSERT INTO `jobs` VALUES (1,'Data Analyst','Bengaluru India',35000,'$USD','Analyze and interpret complex data sets to uncover trends, patterns, and insights.\nDevelop and maintain databases, data systems, and dashboards.\nCollaborate with cross-functional teams to understand business needs and provide data-driven solutions.\nPerform data cleansing, validation, and quality assurance activities.\nPresent findings and insights to both technical and non-technical stakeholders.\nStay current with industry trends and emerging technologies in data analysis.','Bachelor\'s degree in a relevant field (e.g., Statistics, Mathematics, Computer Science).\nProven experience as a Data Analyst or in a similar role.\nProficiency in SQL, Excel, and data visualization tools (e.g., Tableau, Power BI).\nStrong analytical and problem-solving skills.\nExcellent communication and presentation skills.\nFamiliarity with statistical analysis and modeling techniques.\nDetail-oriented with a focus on accuracy.'),(2,'Backend Developer','Nairobi, Kenya',470000,'KSh.','Design, develop, and maintain efficient and reliable server-side applications.\nCollaborate with front-end developers, system administrators, and other team members to integrate user-facing elements with server-side logic.\nImplement security and data protection measures.\nParticipate in code reviews, debugging, and troubleshooting.\nOptimize application performance and scalability.\nStay updated on emerging technologies and contribute to the continuous improvement of our development processes.','Bachelor\'s degree in Computer Science or related field.\nProven experience as a Backend Developer or similar role.\nProficiency in server-side languages such as Python, Node.js, or Java.\nExperience with databases (e.g., MySQL, MongoDB, PostgreSQL).\nFamiliarity with web servers (e.g., Nginx, Apache) and cloud services.\nUnderstanding of RESTful APIs and microservices architecture.\nVersion control using Git and familiarity with CI/CD pipelines.\nStrong problem-solving and analytical skills.'),(3,'Front End Developer','London, UK',31000,'£','Develop and maintain responsive and user-friendly web interfaces.\nCollaborate closely with UI/UX designers to implement design concepts into functional code.\nOptimize applications for maximum speed and scalability.\nEnsure the technical feasibility of UI/UX designs and implement cross-browser compatibility.\nParticipate in code reviews, testing, and debugging.\nStay up-to-date with emerging frontend technologies and industry trends.','Bachelor\'s degree in Computer Science, Web Development, or related field.\nProven experience as a Frontend Developer or similar role.\nProficiency in HTML, CSS, JavaScript, and modern frontend frameworks (e.g., React, Angular, Vue).\nExperience with responsive design and mobile-first development.\nFamiliarity with version control systems (e.g., Git).\nStrong understanding of web performance optimization techniques.\nExcellent problem-solving and communication skills.'),(4,'Back End Developer Team Lead','Nairobi, kenya',1200000,'KSh.','Lead the design and development of scalable and high-performance backend systems.\nMentor and guide junior developers, fostering a collaborative and knowledge-sharing culture.\nCollaborate with cross-functional teams to define technical requirements and system architectures.\nImplement best practices for security, data protection, and system monitoring.\nConduct code reviews and ensure adherence to coding standards and guidelines.\nTroubleshoot and resolve complex technical issues and challenges.\nStay abreast of industry trends and emerging technologies.','Bachelor\'s degree in Computer Science or related field.\nProven experience as a Senior Backend Developer or similar leadership role.\nIn-depth knowledge of server-side languages such as Python, Node.js, or Java.\nExpertise in designing and implementing databases (e.g., MySQL, MongoDB, PostgreSQL).\nExperience with cloud platforms and services (e.g., AWS, Azure, Google Cloud).\nStrong understanding of microservices architecture and RESTful APIs.\nProficiency in version control using Git and CI/CD pipelines.\nExcellent problem-solving, communication, and leadership skills.'),(5,'Daniel Obare Nyakundi','Manchester, UK',NULL,'KSh.','Senior Software Engineer','MBA Oxford University'),(6,'AWS Solutions Architect','Seattle, USA',100000,'$USD','Solution Design: Collaborate with clients and internal teams to understand business requirements and design AWS-based solutions that align with organizational goals. Create architecture blueprints, diagrams, and documentation to guide the implementation.\n\nCloud Infrastructure: Lead the design and deployment of scalable, reliable, and secure cloud infrastructure on AWS. This includes selecting appropriate AWS services and configuring them to meet specific project requirements.\n\nSecurity and Compliance: Implement best practices for security and compliance in AWS environments. Ensure that cloud solutions adhere to industry standards and regulatory requirements. Conduct regular security assessments and recommend improvements.\n\nMigration and Integration: Provide expertise in migrating on-premises applications and data to the AWS cloud. Integrate AWS services with existing systems, ensuring seamless interoperability and optimal performance.\n\nCost Optimization: Optimize AWS costs by recommending and implementing efficient resource utilization strategies. Monitor and analyze AWS billing and usage reports, making cost-effective recommendations.\n\nPerformance Tuning: Identify and resolve performance bottlenecks in AWS environments. Conduct regular performance assessments and implement improvements to enhance system efficiency.\n\nCollaboration: Work closely with cross-functional teams, including developers, system administrators, and network engineers, to ensure successful implementation and operation of AWS solutions. Provide guidance and support during the entire project lifecycle.\n\nEmerging Technologies: Stay abreast of the latest AWS services, features, and industry trends. Evaluate new technologies and provide recommendations for their adoption to enhance overall cloud capabilities.','Bachelor\'s degree in Computer Science, Information Technology, or related field.\nProven experience as a Cloud Solutions Architect, with a focus on AWS.\nAWS certifications (e.g., AWS Certified Solutions Architect) are highly desirable.\nStrong understanding of cloud computing concepts and principles.\nProficiency in designing and implementing AWS-based solutions using Infrastructure as Code (IaC) tools like AWS CloudFormation or Terraform.\nKnowledge of security best practices and experience implementing security controls in AWS environments.\nExcellent communication skills with the ability to convey complex technical concepts to both technical and non-technical stakeholders.'),(7,'Senior Java Developer','Rome, Italy',260000,'$USD','Design and Development: Lead the design and implementation of complex, scalable, and high-performance Java applications, ensuring the highest standards of quality and efficiency.\n\nArchitecture: Contribute to the architectural decisions and provide technical expertise in the development of robust and maintainable software solutions.\n\nCode Review: Collaborate with team members to conduct thorough code reviews, ensuring adherence to coding standards, best practices, and scalability requirements.\n\nPerformance Optimization: Identify and address performance bottlenecks, ensuring optimal performance of Java applications.\n\nIntegration: Work closely with cross-functional teams to integrate Java applications with existing systems and third-party services.\n\nTroubleshooting: Diagnose and resolve complex issues in a timely and efficient manner, providing technical support when necessary.','Bachelor\'s or Master’s degree in Computer Science or a related field.\n7 years of proven experience as a Java Developer, demonstrating expertise in Java programming, Spring Framework, and related technologies.\nProficiency in Java and J2EE technologies.\nExtensive experience with Spring Framework, Hibernate, and other related frameworks.\nStrong understanding of microservices architecture and RESTful web services.\nExperience with database design and optimization (SQL, NoSQL).\nFamiliarity with front-end technologies (HTML, CSS, JavaScript).\nKnowledge of agile development methodologies.\nExcellent problem-solving and analytical skills.\nStrong communication and collaboration abilities.'),(8,'Agile Software Developer','Nairobi, Kenya',90000,'$USD','As an Agile Software Developer, you will be an integral part of our development team, contributing to the design, development, and implementation of high-quality software solutions. Your responsibilities will include:\n\nCollaborating with cross-functional teams to gather and define project requirements.\nParticipating in agile ceremonies, including sprint planning, daily stand-ups, sprint reviews, and retrospectives.\nDesigning and implementing software solutions that meet business requirements and align with best practices.\nWriting clean, efficient, and maintainable code.\nConducting code reviews and providing constructive feedback to team members.\nIdentifying and addressing technical debt to ensure codebase health.\nKeeping abreast of industry trends and best practices to continuously improve development processes.','To succeed in this role, you should have:\n\nProven experience as a Software Developer with a focus on agile methodologies.\nProficiency in one or more programming languages (e.g., Java, Python, JavaScript).\nStrong understanding of agile principles and experience working in agile teams.\nExcellent problem-solving skills and attention to detail.\nAbility to work collaboratively in a team environment.\nGood communication skills and the ability to convey complex technical concepts to non-technical stakeholders.\nFamiliarity with modern development tools and frameworks.\n\nEducation and Experience:\n\nBachelor\'s degree in Computer Science, Engineering, or a related field.\nMinimum 4 years of experience in software development, with a focus on agile methodologies.'),(9,'Algorithm Software Intern','Onsite in Somerville, MA',10000,'$USD','Develop novel and performant algorithms in modern C++ to tackle problems related to laser path planning, physics modeling, computational geometry, and 3D rendering\nOptimize and improve existing code to make every clock cycle count\nEnd-to-end feature development including design, implementation, and validation\nCross platform (Win, Mac) desktop application development using C++17 and Qt\nDesign and implement well-structured code with strong focus on maintainability, reusability, and testing\nWork in an agile product-focused environment','Interested in developing high-performance software at the intersection of mathematics and science\nComfortable tackling complex problems in unfamiliar domains, reading papers to understand the state-of-the-art \nInterested in image processing and geometry algorithms, parallel computing, and related mathematics\nExperienced in developing and optimizing low-level software (bonus points for C++!)');
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-29 17:38:00

-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: raunak-sql.mysql.database.azure.com:3306
-- Generation Time: Feb 11, 2023 at 06:35 AM
-- Server version: 8.0.31
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES latin1 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `adonet`
--

CREATE TABLE `adonet` (
  `Id` int NOT NULL,
  `Question` varchar(75) DEFAULT NULL,
  `opt1` varchar(34) DEFAULT NULL,
  `opt2` varchar(37) DEFAULT NULL,
  `opt3` varchar(42) DEFAULT NULL,
  `opt4` varchar(37) DEFAULT NULL,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adonet`
--

INSERT INTO `adonet` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'ADO.NET stands for ?', 'ActiveX Data Object', 'All Data Object', 'Access Data Object', ' ActiveX DataSet Object', '1'),
(2, 'The DataReader object is an alternative to the?', 'Dataset', 'DataAdapter', 'Both 1 and 2', 'None of above', '1'),
(3, 'Syntax for closing and opening the connection in ADO.net is _______________', 'sqlConn.Open() and sqlConn.close()', 'sqlConn.open() and sqlConn.Close()', 'sqlConn.Open() and sqlConn.Close()', 'None of the above', '3'),
(4, 'The main features of dotConnect for SQL Server includes ___________', ' Extra data binding capabilities', 'Ability of monitoring query execution', 'Supports the latest versions of SQL Server', 'All Of the above', '4'),
(5, 'Which properties Returns the parent DataSet?', 'ParentColumns', 'ParentRelations', 'ParentDataSet', 'DataSet', '4'),
(6, 'What is the extensionfor Asp.net page?', '.asp', '.aspx', '.asx', '.apx', '2'),
(7, 'MVC stands for ____.', 'Model Vocal Controller ', 'Mode View Controller', 'Model View Count', 'Model View Controller', '4'),
(8, 'Which is the correct basic syntax of Application directive?', '<%@ Application Language=\'C#\' %>', '<\\!-- Application Language=\'C#\' --> ', '<%@ Application_DIR Language=\'C#\' %>', '<%@ DIR @Application Language=\'C#\' %>', '1'),
(9, 'Which protocol is used to call a web service?', 'SOAP Protocol', 'HTTP Protocol', 'TCP Protocol', 'FTP Protocol', '2'),
(10, 'What is the default timeout for a cookie in ASP.Net?', '10 Minutes', '20Minutes', '5Minutes', '30Minutes', '4');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Id` int NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Id`, `name`, `email`, `message`) VALUES
(1, 'Atif Aslam', 'raunak200308@gmail.com', 'fsddsfdfs');

-- --------------------------------------------------------

--
-- Table structure for table `cprogram`
--

CREATE TABLE `cprogram` (
  `Id` int NOT NULL,
  `Question` varchar(134) DEFAULT NULL,
  `opt1` varchar(21) DEFAULT NULL,
  `opt2` varchar(20) DEFAULT NULL,
  `opt3` varchar(26) DEFAULT NULL,
  `opt4` varchar(55) DEFAULT NULL,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cprogram`
--

INSERT INTO `cprogram` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, ' All keywords in C are in _________?', 'LowerCase letters', 'UpperCase letters', 'CamelCase letters', ' None of the mentioned', '1'),
(2, 'Which is valid C expression?', 'int my_num = 100,000;', 'int my_num = 100000;', 'int my num = 1000;', 'int $my_num = 10000;', '2'),
(3, 'Functions in C Language are always _______', 'Internal', 'External', 'Both Internal and External', 'External and Internal are not valid terms for functions', '2'),
(4, 'What is meant by ‘a’ in the following C operation?, \r\n fp = fopen(\'Random.txt\', \'a\');', 'Attach', ' Apprehend', 'Append', 'Add', '3'),
(5, 'What will be the final value of x in the following C code?\r\n #include <stdio.h>\r\n void main() \r\n {\r\n int x = 5 * 9 / 3 + 9; \r\n }', '3.75', 'Depends on compiler', '24', '3', '3'),
(6, 'What will be the data type returned for the following C function \r\n #include <stdio.h>\r\n int func()\r\n{\r\n return (double)(char)5.0;\r\n }', 'int', 'char', 'double', 'multiple type-casting in return is illegal', '1'),
(7, 'What will be the output of the following C code snippet? \r\n #include <stdio.h> \r\n void main() \r\n { \r\n 1 < 2 ? return 1: return 2;\r\n }', 'returns 1', 'returns 2', 'Varies', 'Compile time error', '4'),
(8, '\'Comment on the following C statement \r\n n = 1; \r\n printf(\'%d, %dn\', 3*n, n++);\'', 'Output will be 3, 2', 'Output will be 3, 1', 'Output will be 6, 1', 'Output is compiler dependent', '4'),
(9, ' What will be the value of the following assignment expression?\r\n (x = foo())!= 1 considering foo() returns 2', '2', 'True', '1', '0', '1'),
(10, 'When a C program is started, O.S environment is responsible for opening file and providing pointer for that file?', 'Standard input', 'Standard output', 'Standard error', 'All of the mentioned', '4');

-- --------------------------------------------------------

--
-- Table structure for table `csecurity`
--

CREATE TABLE `csecurity` (
  `Id` int NOT NULL,
  `Question` varchar(63) DEFAULT NULL,
  `opt1` varchar(38) DEFAULT NULL,
  `opt2` varchar(40) DEFAULT NULL,
  `opt3` varchar(34) DEFAULT NULL,
  `opt4` varchar(44) DEFAULT NULL,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `csecurity`
--

INSERT INTO `csecurity` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'How many total types of scanning in cyber security?', '1', '2', '3', '4', '3'),
(2, 'Identify the first computer virus among the following', 'Blaster', 'creeper', 'Sasser', 'Both 2 and 3', '4'),
(3, 'Which protocol is mostly used in Wi-fi security?', 'WPS', 'WPA', 'WPA2', 'both 2 and 3', '1'),
(4, 'Which malware does not replicate or clone through an infection?', 'Worms', 'Trojans', 'Rookits', 'Virus', '2'),
(5, 'Identify the legal form of hacking', 'Craking', 'Non-ethical hacking', 'Ethical hacking', 'Hacktivism', '3'),
(6, 'Malware stands for?', 'Multipurpose software', 'Malfunctioned software', 'Malfunctioning of security', 'Malicious software', '4'),
(7, 'Which security protocol is not strong?', 'SMTP', 'SSL', 'SFTP', 'HTTPS', '1'),
(8, 'PCT stands for ______', 'Private Communication Technique', 'Private Connecting Technology ', 'Private Communication Technology', 'Personal Communication Technology', '3'),
(9, 'What is the first phase of ethical hacking?', 'Footprinting', 'ARP Poisoning', 'DNS Poisoning', 'Eumeration', '1'),
(10, 'Why proxy server is used by hacker?', 'For obtaining remote access connection', 'Hiding malicious activity on the network', 'Create a ghost server on a network', 'create a stronger connection with the target', '2');

-- --------------------------------------------------------

--
-- Table structure for table `dscience`
--

CREATE TABLE `dscience` (
  `Id` int NOT NULL,
  `Question` varchar(71) DEFAULT NULL,
  `opt1` varchar(18) DEFAULT NULL,
  `opt2` varchar(24) DEFAULT NULL,
  `opt3` varchar(18) DEFAULT NULL,
  `opt4` varchar(14) DEFAULT NULL,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dscience`
--

INSERT INTO `dscience` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'Which of the following is performed by data scientist?', 'Define the quesion', 'Create reproducible code', 'Challenge results', 'All of above', '4'),
(2, 'Which of the following is the most important language for data science?', 'Java', 'Ruby', 'R', 'None of above', '3'),
(3, 'Which of the following is one of the key data science skills?', 'Statistics', 'Machine learning', 'Data visualization', 'All of above', '4'),
(4, 'Data fishing is sometimes referred as ______', 'Data bagging', 'Data dredging', 'Data merging', 'None of above', '2'),
(5, 'Which function gives information about top-level data?', 'tail', 'summary', 'head', 'None of above', '3'),
(6, 'Which technique comes under practical machine learning?', 'Bagging', 'Forecasting', 'Boosting', 'None of these', '3'),
(7, 'CNN is mostly used for which type of data?', 'structured data', 'unstructured data', 'Both', 'None of above', '2'),
(8, 'Which of the following is another name for raw data?', 'Destination data', 'Eggy data', 'Machine learning', 'Secondary data', '1'),
(9, 'Which of the following is revision control system?', 'Numpy', 'Git', ' Scipy', 'Slidify', '2'),
(10, 'A ______ is a structured representation of data', 'data table', 'functions', 'data prepration', 'data frame', '4');

-- --------------------------------------------------------

--
-- Table structure for table `fcomputer`
--

CREATE TABLE `fcomputer` (
  `Id` int NOT NULL,
  `Question` text NOT NULL,
  `opt1` text NOT NULL,
  `opt2` text NOT NULL,
  `opt3` text NOT NULL,
  `opt4` text NOT NULL,
  `ans` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Dumping data for table `fcomputer`
--

INSERT INTO `fcomputer` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'Who is the father of computer?', 'James Gosling', 'Charles Babbage', 'Dennis Ritchie', 'Bjarne Stroustrup', 2),
(2, 'The generation based on VLSI microprocessor', '1st', '2nd', '3rd', '4th', 4),
(3, 'Which of the following is not a \\n type of computer code', 'EDIC', 'ASCII', 'BCD', 'EBCDIC', 1),
(4, 'Which of the following is not a type of computer on the basis of operation?', 'Digital', 'Analog', 'Hybrid', 'Remote', 4),
(5, 'Which of the indian institution has developed the SUPER COMPUTER PRATHAM?', 'Wipro', 'TCS', 'C-DAK', 'PRL', 3),
(6, 'A light sensitive device that converts drawing, printed text or other images into digital form is_______', 'Plotter', 'OMR', 'Scanner', 'None Of These', 2),
(7, 'What is the decimal equivalent of the binary number 1011?\r\n', '23', '39', '42', '21', 1),
(8, 'What is the full form of EEPROM?', 'Electrically Erasable Programmble Read Only Memory', 'Easily Erasable Programming Read Only Memory', 'Electronic Erasable Programmble Read Only Memory', 'None Of These', 1),
(9, 'A computer is accurate but if the result of a computation is false, what is the main reason for it?', 'Power failure', 'The computer circuits', 'Distraction', 'Incorrect data entry', 4),
(10, 'What is extension of Windows Media Video File?\r\n', '.mv', '.wm', '.wmv', '.video', 3);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `Id` int NOT NULL,
  `Name` text NOT NULL,
  `Marks` int NOT NULL,
  `Subject` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`Id`, `Name`, `Marks`, `Subject`) VALUES
(1, 'Raunak S ', 0, 'adonet'),
(2, 'Anonymous', 0, 'adonet'),
(3, 'Anonymous', 1, 'adonet'),
(4, 'Anonymous', 3, 'adonet'),
(5, 'Raunak S ', 1, 'python');

-- --------------------------------------------------------

--
-- Table structure for table `python`
--

CREATE TABLE `python` (
  `Id` int NOT NULL,
  `Question` text,
  `opt1` text,
  `opt2` text,
  `opt3` text,
  `opt4` text,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `python`
--

INSERT INTO `python` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'Who developed Python Programming Language?', 'Wick van Rossum', 'Rasmus Lerdorf', 'Guido van Rossum', 'Niene Stom', '3'),
(2, 'What will be the output of the following Python code?\r\n i = 1 \r\n while True: \r\n if i%3 == 0:\r\n break \r\n print(i) \r\n i + = 1', '1 2 3', 'Error', '1 2', 'none of the mentioned', '2'),
(3, 'Python supports the creation of anonymous functions at runtime, using a construct called_____', 'pi', 'anonymous', 'lambda', 'none of the mentioned', '3'),
(4, 'What will be the output of the following Python code snippet if x=1?', '4', '2', '1', '8', '1'),
(5, 'Which of the following is correctly evaluated for this function?', '(x**y) / z', '(x / y) * z', '(x**y) % z', '(x / y) / z', '3'),
(6, 'What will be the output of the following Python code?\r\n l=[1, 0, 2, 0, \'hello\', \'\', []] \r\n list(filter(bool, l))', '[1, 0, 2, ‘hello’, ”, []]', 'Error', ' [1, 0, 2, 0, ‘hello’, ”, []]', '[1, 2, ‘hello’]', '4'),
(7, 'Which of the following blocks will always be executed whether an exception is encountered or not in a program?', 'try', 'finally', 'except', 'None of these', '2'),
(8, 'Which of the following are valid escape sequences in Python?', '\r\n', '', '\\', 'All of the above', '4'),
(9, ' What will be the output of the following Python code? \r\n class tester:\r\n def __init__(self, id): \r\n self.id = str(id)\r\n id=\'224\' \r\n >>>temp = tester(12)>>>print(temp.id)', '12', '224', 'None', 'Error', '1'),
(10, 'What will be the output of the following code snippet?\r\n print(2**3 + (5 + 6)**(1 + 1))', '121', '8', '129', 'None of the above', '1');

-- --------------------------------------------------------

--
-- Table structure for table `rdbms`
--

CREATE TABLE `rdbms` (
  `Id` int NOT NULL,
  `Question` varchar(319) DEFAULT NULL,
  `opt1` varchar(79) DEFAULT NULL,
  `opt2` varchar(98) DEFAULT NULL,
  `opt3` varchar(95) DEFAULT NULL,
  `opt4` varchar(50) DEFAULT NULL,
  `ans` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rdbms`
--

INSERT INTO `rdbms` (`Id`, `Question`, `opt1`, `opt2`, `opt3`, `opt4`, `ans`) VALUES
(1, 'What is an RDBMS?', 'Database that stores data elements that are not linked', 'Database that accesses data elements that are not linked', 'Database that stores and allows access to data elemts that are linked', 'None of the mentioned', '3'),
(2, 'The primary key is selected from the _______', 'Candidate keys', 'Composite keys', 'Determinants', 'Foreign keys', '1'),
(3, 'Which of the following commands do we use to delete a relation(RDBMS) from a database?', 'drop table RDBMS', 'delete table RDBMS', 'delete from RDBMS', 'drop relation RDBMS', '1'),
(4, 'What does the following query do?\n UPDATE student \n SET marks=marks*1.10;', 'It decreases the marks of all the students by 90%', 'It increases the marks of all the students by 10%', 'It is syntactically wrong', 'It increases the marks of all the students by 110%', '2'),
(5, 'Which of the following is preserved in the execution of transactions in isolation?', 'Atomicity', 'Isolation', 'Consistency', 'Durability', '3'),
(6, 'The database is alwys expected to satisfy which predicate?', 'Assertion', 'Mandate', 'Verify', 'None of the above', '1'),
(7, 'What kind of joins is a default in SQL?', 'Outer', 'Self', 'Inner', 'None of the above', '3'),
(8, 'A relation is in the form if it is in BCNF and has no multivalued dependencies', 'Second normal form', 'Third normal form', 'Fourth normal form', 'Domain/Key normal form', '3'),
(9, 'Which of the following is the correct option for the given query?\n\n SELECT DISTINCT name FROM RDBMS \n WHERE ID IS NOT NULL;', 'The query gives all the possible RDBMS names where a finite value exists for ID', 'The query gives the RDBMS names where a finite value exists for ID and it excludes identical names', 'The query gives the names of the RDBMS that have a null ID and it also excludes identical names', 'The query is syntactically wrong', '2'),
(10, 'For each sttribute of a relation, there is a set of permitted values, called the _______ of that attribute', 'Domain', 'Relation', 'Set', 'Schema', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`fname`, `lname`, `email`, `password`, `last_login`) VALUES
('Raunak', 'S', 'ron@gmail.com', '1234', '2023-02-11 05:11:06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adonet`
--
ALTER TABLE `adonet`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cprogram`
--
ALTER TABLE `cprogram`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `csecurity`
--
ALTER TABLE `csecurity`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `dscience`
--
ALTER TABLE `dscience`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `fcomputer`
--
ALTER TABLE `fcomputer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `python`
--
ALTER TABLE `python`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `rdbms`
--
ALTER TABLE `rdbms`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adonet`
--
ALTER TABLE `adonet`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cprogram`
--
ALTER TABLE `cprogram`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `csecurity`
--
ALTER TABLE `csecurity`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dscience`
--
ALTER TABLE `dscience`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `fcomputer`
--
ALTER TABLE `fcomputer`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `python`
--
ALTER TABLE `python`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `rdbms`
--
ALTER TABLE `rdbms`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Jul-2017 às 20:13
-- Versão do servidor: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academico`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `administrador`
--

CREATE TABLE `administrador` (
  `idAdministrador` int(11) NOT NULL,
  `Nome` varchar(70) NOT NULL,
  `Data_Nascimento` varchar(45) NOT NULL,
  `Cpf` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administrador`
--

INSERT INTO `administrador` (`idAdministrador`, `Nome`, `Data_Nascimento`, `Cpf`, `Email`, `Telefone`) VALUES
(1, 'José da Silva', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565'),
(2, 'José da Silva', 'rtrt', '503.658.365-54', 'jose', '(85)986759565');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `idAluno` int(11) NOT NULL,
  `Curso_idCurso` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Data_Nascimento` varchar(45) NOT NULL,
  `Cpf` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telefone` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`idAluno`, `Curso_idCurso`, `Nome`, `Data_Nascimento`, `Cpf`, `Email`, `Telefone`, `Endereco`) VALUES
(1, 1, 'Jose', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro'),
(2, 1, 'José da Silva', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno_na_turma`
--

CREATE TABLE `aluno_na_turma` (
  `Aluno_idAluno` int(11) NOT NULL,
  `Turma_idTurma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aula`
--

CREATE TABLE `aula` (
  `idAula` int(11) NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aula_na_sala`
--

CREATE TABLE `aula_na_sala` (
  `Sala_idSala` int(11) NOT NULL,
  `Aula_idAula` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `avaliacao`
--

CREATE TABLE `avaliacao` (
  `idAvaliacao` int(11) NOT NULL,
  `Disciplina_idDisciplina` int(11) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Data` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `calendario`
--

CREATE TABLE `calendario` (
  `idCalendario` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Semestre` int(11) NOT NULL,
  `Data_inicio` date NOT NULL,
  `Data_fim` date NOT NULL,
  `Tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `idContato` int(11) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  `Telefone` varchar(17) NOT NULL,
  `Fax` varchar(45) NOT NULL,
  `E-mail` varchar(45) NOT NULL,
  `Homepage` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenador`
--

CREATE TABLE `coordenador` (
  `idCoordenador` int(11) NOT NULL,
  `Professor_idProfessor` int(11) NOT NULL,
  `Curso_que_coordena` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `curso`
--

CREATE TABLE `curso` (
  `idCurso` int(11) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Coordenador` varchar(45) NOT NULL,
  `Carga_Horaria` int(11) NOT NULL,
  `Nome` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `curso`
--

INSERT INTO `curso` (`idCurso`, `Departamento_idDepartamento`, `Descricao`, `Coordenador`, `Carga_Horaria`, `Nome`) VALUES
(1, 1, 'é muito bono', 'asdasdsda', 80, 'Engenharia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `idDepartamento` int(11) NOT NULL,
  `Nome` varchar(70) NOT NULL,
  `Descricao` varchar(60) NOT NULL,
  `Diretor` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`idDepartamento`, `Nome`, `Descricao`, `Diretor`) VALUES
(1, 'Telemática', 'asdsad', 'Paulo'),
(2, 'Teste', 'é muito bono 2, bono vox, kekeke', 'Paulo');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `idDisciplina` int(11) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `Carga_Horaria` int(11) NOT NULL,
  `Ementa` varchar(45) NOT NULL,
  `Bibliografia` varchar(45) NOT NULL,
  `Pré-Requisitos` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `frequencia`
--

CREATE TABLE `frequencia` (
  `Aluno_idAluno` int(11) NOT NULL,
  `Aula_idAula` int(11) NOT NULL,
  `Data` date NOT NULL,
  `Presente` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `Aluno_idAluno` int(11) NOT NULL,
  `Data_Inscricao` date NOT NULL,
  `Data_inicio` date NOT NULL,
  `Data_Termino` date NOT NULL,
  `Tipo_Diploma` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota`
--

CREATE TABLE `nota` (
  `Aluno_idAluno` int(11) NOT NULL,
  `Avaliacao_idAvaliacao` int(11) NOT NULL,
  `Valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `idProfessor` int(11) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  `Nome` varchar(45) NOT NULL,
  `Data_Nascimento` varchar(45) NOT NULL,
  `Cpf` varchar(45) NOT NULL,
  `Email` varchar(70) NOT NULL,
  `Telefone` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL,
  `Titulacao` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`idProfessor`, `Departamento_idDepartamento`, `Nome`, `Data_Nascimento`, `Cpf`, `Email`, `Telefone`, `Endereco`, `Titulacao`) VALUES
(1, 1, 'José da Silva', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro', 'professor de física'),
(2, 1, 'José da Silva', 'ddd', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro', NULL),
(4, 1, 'José da Silva', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro', NULL),
(5, 1, 'José da Silva4asasd', '28/12/2017', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro', 'professor de física');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sala`
--

CREATE TABLE `sala` (
  `idSala` int(11) NOT NULL,
  `Numero` int(11) NOT NULL,
  `Bloco` varchar(45) NOT NULL,
  `Tipo` varchar(45) NOT NULL,
  `Capacidade` int(11) NOT NULL,
  `Telefone` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `secretaria`
--

CREATE TABLE `secretaria` (
  `idSecretaria` int(11) NOT NULL,
  `Departamento_idDepartamento` int(11) NOT NULL,
  `Nome` varchar(70) NOT NULL,
  `Data_Nascimento` date NOT NULL,
  `Cpf` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Telefone` varchar(45) NOT NULL,
  `Endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `secretaria`
--

INSERT INTO `secretaria` (`idSecretaria`, `Departamento_idDepartamento`, `Nome`, `Data_Nascimento`, `Cpf`, `Email`, `Telefone`, `Endereco`) VALUES
(1, 1, 'Paula', '0000-00-00', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro'),
(2, 1, 'Telemáticagg', '0000-00-00', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro'),
(3, 1, 'José da Silva', '2017-07-08', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro'),
(4, 1, 'José da Silva4', '2017-01-18', '503.658.365-54', 'jose', '(85)986759565', 'rua logradouro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `idTurma` int(11) NOT NULL,
  `Ano/Semestre` varchar(45) NOT NULL,
  `Dias_Semana` varchar(45) NOT NULL,
  `Horarios` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma_na_sala`
--

CREATE TABLE `turma_na_sala` (
  `Turma_idTurma` int(11) NOT NULL,
  `Sala_idSala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`idAdministrador`);

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`idAluno`),
  ADD UNIQUE KEY `idAluno_UNIQUE` (`idAluno`),
  ADD KEY `fk_Aluno_Curso1_idx` (`Curso_idCurso`);

--
-- Indexes for table `aluno_na_turma`
--
ALTER TABLE `aluno_na_turma`
  ADD PRIMARY KEY (`Aluno_idAluno`,`Turma_idTurma`),
  ADD KEY `fk_Aluno_has_Turma_Turma1_idx` (`Turma_idTurma`),
  ADD KEY `fk_Aluno_has_Turma_Aluno1_idx` (`Aluno_idAluno`);

--
-- Indexes for table `aula`
--
ALTER TABLE `aula`
  ADD PRIMARY KEY (`idAula`),
  ADD UNIQUE KEY `idAula_UNIQUE` (`idAula`);

--
-- Indexes for table `aula_na_sala`
--
ALTER TABLE `aula_na_sala`
  ADD PRIMARY KEY (`Sala_idSala`,`Aula_idAula`),
  ADD KEY `fk_Sala_has_Aula_Aula1_idx` (`Aula_idAula`),
  ADD KEY `fk_Sala_has_Aula_Sala1_idx` (`Sala_idSala`);

--
-- Indexes for table `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD PRIMARY KEY (`idAvaliacao`),
  ADD UNIQUE KEY `idAvaliacao_UNIQUE` (`idAvaliacao`),
  ADD KEY `fk_Avaliacao_Disciplina1_idx` (`Disciplina_idDisciplina`);

--
-- Indexes for table `calendario`
--
ALTER TABLE `calendario`
  ADD PRIMARY KEY (`idCalendario`),
  ADD UNIQUE KEY `idCalendario_UNIQUE` (`idCalendario`);

--
-- Indexes for table `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`idContato`),
  ADD UNIQUE KEY `idContato_UNIQUE` (`idContato`),
  ADD KEY `fk_Contato_Departamento_idx` (`Departamento_idDepartamento`);

--
-- Indexes for table `coordenador`
--
ALTER TABLE `coordenador`
  ADD PRIMARY KEY (`idCoordenador`),
  ADD UNIQUE KEY `idCoordenador_UNIQUE` (`idCoordenador`),
  ADD KEY `fk_Coordenador_Professor1_idx` (`Professor_idProfessor`);

--
-- Indexes for table `curso`
--
ALTER TABLE `curso`
  ADD PRIMARY KEY (`idCurso`),
  ADD UNIQUE KEY `idCurso_UNIQUE` (`idCurso`),
  ADD KEY `fk_Curso_Departamento1_idx` (`Departamento_idDepartamento`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`idDepartamento`),
  ADD UNIQUE KEY `idDepartamento_UNIQUE` (`idDepartamento`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`idDisciplina`),
  ADD UNIQUE KEY `idDisciplina_UNIQUE` (`idDisciplina`);

--
-- Indexes for table `frequencia`
--
ALTER TABLE `frequencia`
  ADD PRIMARY KEY (`Aluno_idAluno`,`Aula_idAula`),
  ADD KEY `fk_Aluno_has_Aula_Aula1_idx` (`Aula_idAula`),
  ADD KEY `fk_Aluno_has_Aula_Aluno1_idx` (`Aluno_idAluno`);

--
-- Indexes for table `historico`
--
ALTER TABLE `historico`
  ADD KEY `fk_Historico_Aluno1_idx` (`Aluno_idAluno`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`Aluno_idAluno`,`Avaliacao_idAvaliacao`),
  ADD KEY `fk_Aluno_has_Avaliacao_Avaliacao1_idx` (`Avaliacao_idAvaliacao`),
  ADD KEY `fk_Aluno_has_Avaliacao_Aluno1_idx` (`Aluno_idAluno`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`idProfessor`),
  ADD UNIQUE KEY `idProfessor_UNIQUE` (`idProfessor`),
  ADD KEY `fk_Professor_Departamento1_idx` (`Departamento_idDepartamento`);

--
-- Indexes for table `sala`
--
ALTER TABLE `sala`
  ADD PRIMARY KEY (`idSala`),
  ADD UNIQUE KEY `idSala_UNIQUE` (`idSala`);

--
-- Indexes for table `secretaria`
--
ALTER TABLE `secretaria`
  ADD PRIMARY KEY (`idSecretaria`),
  ADD KEY `fk_Secretaria_Departamento1_idx` (`Departamento_idDepartamento`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`idTurma`),
  ADD UNIQUE KEY `idTurma_UNIQUE` (`idTurma`);

--
-- Indexes for table `turma_na_sala`
--
ALTER TABLE `turma_na_sala`
  ADD PRIMARY KEY (`Turma_idTurma`,`Sala_idSala`),
  ADD KEY `fk_Turma_has_Sala_Sala1_idx` (`Sala_idSala`),
  ADD KEY `fk_Turma_has_Sala_Turma1_idx` (`Turma_idTurma`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrador`
--
ALTER TABLE `administrador`
  MODIFY `idAdministrador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `aluno`
--
ALTER TABLE `aluno`
  MODIFY `idAluno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `aula`
--
ALTER TABLE `aula`
  MODIFY `idAula` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `avaliacao`
--
ALTER TABLE `avaliacao`
  MODIFY `idAvaliacao` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calendario`
--
ALTER TABLE `calendario`
  MODIFY `idCalendario` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `contato`
--
ALTER TABLE `contato`
  MODIFY `idContato` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coordenador`
--
ALTER TABLE `coordenador`
  MODIFY `idCoordenador` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `curso`
--
ALTER TABLE `curso`
  MODIFY `idCurso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `departamento`
--
ALTER TABLE `departamento`
  MODIFY `idDepartamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `idDisciplina` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professor`
--
ALTER TABLE `professor`
  MODIFY `idProfessor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sala`
--
ALTER TABLE `sala`
  MODIFY `idSala` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `secretaria`
--
ALTER TABLE `secretaria`
  MODIFY `idSecretaria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `turma`
--
ALTER TABLE `turma`
  MODIFY `idTurma` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `aluno`
--
ALTER TABLE `aluno`
  ADD CONSTRAINT `fk_Aluno_Curso1` FOREIGN KEY (`Curso_idCurso`) REFERENCES `curso` (`idCurso`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aluno_na_turma`
--
ALTER TABLE `aluno_na_turma`
  ADD CONSTRAINT `fk_Aluno_has_Turma_Aluno1` FOREIGN KEY (`Aluno_idAluno`) REFERENCES `aluno` (`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aluno_has_Turma_Turma1` FOREIGN KEY (`Turma_idTurma`) REFERENCES `turma` (`idTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aula_na_sala`
--
ALTER TABLE `aula_na_sala`
  ADD CONSTRAINT `fk_Sala_has_Aula_Aula1` FOREIGN KEY (`Aula_idAula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Sala_has_Aula_Sala1` FOREIGN KEY (`Sala_idSala`) REFERENCES `sala` (`idSala`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `avaliacao`
--
ALTER TABLE `avaliacao`
  ADD CONSTRAINT `fk_Avaliacao_Disciplina1` FOREIGN KEY (`Disciplina_idDisciplina`) REFERENCES `disciplina` (`idDisciplina`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `contato`
--
ALTER TABLE `contato`
  ADD CONSTRAINT `fk_Contato_Departamento` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `coordenador`
--
ALTER TABLE `coordenador`
  ADD CONSTRAINT `fk_Coordenador_Professor1` FOREIGN KEY (`Professor_idProfessor`) REFERENCES `professor` (`idProfessor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `curso`
--
ALTER TABLE `curso`
  ADD CONSTRAINT `fk_Curso_Departamento1` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `frequencia`
--
ALTER TABLE `frequencia`
  ADD CONSTRAINT `fk_Aluno_has_Aula_Aluno1` FOREIGN KEY (`Aluno_idAluno`) REFERENCES `aluno` (`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aluno_has_Aula_Aula1` FOREIGN KEY (`Aula_idAula`) REFERENCES `aula` (`idAula`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `historico`
--
ALTER TABLE `historico`
  ADD CONSTRAINT `fk_Historico_Aluno1` FOREIGN KEY (`Aluno_idAluno`) REFERENCES `aluno` (`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `fk_Aluno_has_Avaliacao_Aluno1` FOREIGN KEY (`Aluno_idAluno`) REFERENCES `aluno` (`idAluno`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Aluno_has_Avaliacao_Avaliacao1` FOREIGN KEY (`Avaliacao_idAvaliacao`) REFERENCES `avaliacao` (`idAvaliacao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professor`
--
ALTER TABLE `professor`
  ADD CONSTRAINT `fk_Professor_Departamento1` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `secretaria`
--
ALTER TABLE `secretaria`
  ADD CONSTRAINT `fk_Secretaria_Departamento1` FOREIGN KEY (`Departamento_idDepartamento`) REFERENCES `departamento` (`idDepartamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turma_na_sala`
--
ALTER TABLE `turma_na_sala`
  ADD CONSTRAINT `fk_Turma_has_Sala_Sala1` FOREIGN KEY (`Sala_idSala`) REFERENCES `sala` (`idSala`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Turma_has_Sala_Turma1` FOREIGN KEY (`Turma_idTurma`) REFERENCES `turma` (`idTurma`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

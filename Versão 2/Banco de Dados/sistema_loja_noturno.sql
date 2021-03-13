-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 06-Mar-2021 às 22:58
-- Versão do servidor: 5.7.12
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_loja_noturno`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_compras`
--

CREATE TABLE `tb_compras` (
  `com_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `com_datacompra` date NOT NULL,
  `com_valortotal` float(18,3) NOT NULL,
  `com_observacoes` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_compras`
--

INSERT INTO `tb_compras` (`com_codigo`, `tpg_codigo`, `for_codigo`, `nf_codigo`, `com_datacompra`, `com_valortotal`, `com_observacoes`) VALUES
(12, 12, 3, 23, '2010-03-03', 2000.000, 'sda');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contapagar`
--

CREATE TABLE `tb_contapagar` (
  `cp_codigo` int(11) NOT NULL,
  `cp_valorconta` float(18,4) NOT NULL,
  `cp_datavencimento` date NOT NULL,
  `cp_datapagamento` date NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cp_observacoes` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_contapagar`
--

INSERT INTO `tb_contapagar` (`cp_codigo`, `cp_valorconta`, `cp_datavencimento`, `cp_datapagamento`, `nf_codigo`, `cp_observacoes`) VALUES
(21, 213.0000, '1900-03-03', '1900-03-03', 23, 'asd');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_contareceber`
--

CREATE TABLE `tb_contareceber` (
  `cr_codigo` int(11) NOT NULL,
  `cr_valorconta` float(18,4) NOT NULL,
  `cr_datavencimento` date NOT NULL,
  `cr_datarecebimento` date NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `cr_observacoes` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_contareceber`
--

INSERT INTO `tb_contareceber` (`cr_codigo`, `cr_valorconta`, `cr_datavencimento`, `cr_datarecebimento`, `nf_codigo`, `cr_observacoes`) VALUES
(12, 321.0000, '1990-03-05', '1990-03-05', 23, 'dasdq');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_fornecedor`
--

CREATE TABLE `tb_fornecedor` (
  `for_codigo` int(11) NOT NULL,
  `for_nome` varchar(80) NOT NULL,
  `for_endereco` varchar(80) NOT NULL,
  `for_numero` varchar(20) NOT NULL,
  `for_bairro` varchar(80) NOT NULL,
  `for_cidade` varchar(80) NOT NULL,
  `for_uf` char(2) NOT NULL,
  `for_cnpjcpf` varchar(14) NOT NULL,
  `for_rgie` varchar(12) NOT NULL,
  `for_telefone` varchar(10) NOT NULL,
  `for_fax` varchar(10) NOT NULL,
  `for_celular` varchar(10) NOT NULL,
  `for_email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_fornecedor`
--

INSERT INTO `tb_fornecedor` (`for_codigo`, `for_nome`, `for_endereco`, `for_numero`, `for_bairro`, `for_cidade`, `for_uf`, `for_cnpjcpf`, `for_rgie`, `for_telefone`, `for_fax`, `for_celular`, `for_email`) VALUES
(3, 'mariazinha', 'rua legal', '213', 'legalzin', 'lagais', 'lg', '42356783', '2345675', '12346578', '12346867', '12346785', 'maria@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `fun_codigo` int(11) NOT NULL,
  `fun_nome` varchar(80) NOT NULL,
  `fun_endereco` varchar(80) NOT NULL,
  `fun_numero` varchar(20) NOT NULL,
  `fun_complemento` varchar(50) NOT NULL,
  `fun_bairro` varchar(80) NOT NULL,
  `fun_cidade` varchar(80) NOT NULL,
  `fun_uf` char(2) NOT NULL,
  `fun_cnpjcpf` varchar(14) NOT NULL,
  `fun_rgie` varchar(12) NOT NULL,
  `fun_sexo` char(1) NOT NULL,
  `fun_nascimento` date NOT NULL,
  `fun_telefone` varchar(10) NOT NULL,
  `fun_celular` varchar(10) NOT NULL,
  `fun_email` varchar(80) NOT NULL,
  `fun_salario` float(18,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`fun_codigo`, `fun_nome`, `fun_endereco`, `fun_numero`, `fun_complemento`, `fun_bairro`, `fun_cidade`, `fun_uf`, `fun_cnpjcpf`, `fun_rgie`, `fun_sexo`, `fun_nascimento`, `fun_telefone`, `fun_celular`, `fun_email`, `fun_salario`) VALUES
(12, 'pedro', 'rua legal', '123', '01', 'legais', 'legales', 'lg', '23124141', '1235654', 'm', '1990-03-05', '12341234', '43121234', 'joao@gmail.com', 2010.0000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_itenscompra`
--

CREATE TABLE `tb_itenscompra` (
  `itenscompra_codigo` int(11) NOT NULL,
  `com_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `for_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `itc_embalagem` char(2) NOT NULL,
  `itc_qtde` float(15,3) NOT NULL,
  `itc_valorun` float(18,3) NOT NULL,
  `itc_desc` float(18,3) NOT NULL,
  `itc_valortotal` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_itenscompra`
--

INSERT INTO `tb_itenscompra` (`itenscompra_codigo`, `com_codigo`, `pro_codigo`, `tpp_codigo`, `nf_codigo`, `for_codigo`, `tpg_codigo`, `itc_embalagem`, `itc_qtde`, `itc_valorun`, `itc_desc`, `itc_valortotal`) VALUES
(12, 12, 13, 13, 23, 3, 12, 'em', 20.000, 12.000, 1828.000, 240.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_itensvenda`
--

CREATE TABLE `tb_itensvenda` (
  `itensvenda_codigo` int(11) NOT NULL,
  `ven_codigo` int(11) NOT NULL,
  `pro_codigo` int(11) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `itv_embalagem` char(2) NOT NULL,
  `itv_qtde` float(15,3) NOT NULL,
  `itv_valorun` float(18,3) NOT NULL,
  `itv_desc` float(18,3) NOT NULL,
  `itv_valortotal` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_itensvenda`
--

INSERT INTO `tb_itensvenda` (`itensvenda_codigo`, `ven_codigo`, `pro_codigo`, `tpp_codigo`, `nf_codigo`, `tpg_codigo`, `fun_codigo`, `itv_embalagem`, `itv_qtde`, `itv_valorun`, `itv_desc`, `itv_valortotal`) VALUES
(12, 41, 13, 13, 23, 12, 12, 'ef', 32.000, 123.000, 123.000, 213.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_notafiscal`
--

CREATE TABLE `tb_notafiscal` (
  `nf_codigo` int(11) NOT NULL,
  `nf_valornf` float(18,4) NOT NULL,
  `nf_taxaimpostonf` float(15,2) NOT NULL,
  `nf_valorimposto` float(18,3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_notafiscal`
--

INSERT INTO `tb_notafiscal` (`nf_codigo`, `nf_valornf`, `nf_taxaimpostonf`, `nf_valorimposto`) VALUES
(23, 31.0000, 20.00, 58.000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produtos`
--

CREATE TABLE `tb_produtos` (
  `pro_codigo` int(11) NOT NULL,
  `pro_descricao` varchar(80) NOT NULL,
  `tpp_codigo` int(11) NOT NULL,
  `pro_precocusto` float(18,4) NOT NULL,
  `pro_precovenda` float(18,4) NOT NULL,
  `pro_estoque` float(18,3) NOT NULL,
  `pro_embalagem` char(2) NOT NULL,
  `pro_ipi` float(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_produtos`
--

INSERT INTO `tb_produtos` (`pro_codigo`, `pro_descricao`, `tpp_codigo`, `pro_precocusto`, `pro_precovenda`, `pro_estoque`, `pro_embalagem`, `pro_ipi`) VALUES
(13, 'asd', 13, 2020.0000, 2040.0000, 13.000, 'er', 12.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipopagto`
--

CREATE TABLE `tb_tipopagto` (
  `tpg_codigo` int(11) NOT NULL,
  `tpg_descricao` varchar(80) NOT NULL,
  `tpg_qtde` int(11) NOT NULL,
  `tpg_ativo` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipopagto`
--

INSERT INTO `tb_tipopagto` (`tpg_codigo`, `tpg_descricao`, `tpg_qtde`, `tpg_ativo`) VALUES
(12, 'qwe', 12, 'f');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipoproduto`
--

CREATE TABLE `tb_tipoproduto` (
  `tpp_codigo` int(11) NOT NULL,
  `tpp_descricao` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_tipoproduto`
--

INSERT INTO `tb_tipoproduto` (`tpp_codigo`, `tpp_descricao`) VALUES
(13, 'asdw');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_vendas`
--

CREATE TABLE `tb_vendas` (
  `ven_codigo` int(11) NOT NULL,
  `fun_codigo` int(11) NOT NULL,
  `tpg_codigo` int(11) NOT NULL,
  `nf_codigo` int(11) NOT NULL,
  `ven_datavenda` date NOT NULL,
  `ven_valortotal` float(18,3) NOT NULL,
  `ven_observacoes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_vendas`
--

INSERT INTO `tb_vendas` (`ven_codigo`, `fun_codigo`, `tpg_codigo`, `nf_codigo`, `ven_datavenda`, `ven_valortotal`, `ven_observacoes`) VALUES
(41, 12, 12, 23, '2000-03-05', 203.000, 'qwe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD PRIMARY KEY (`com_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`),
  ADD KEY `for_codigo` (`for_codigo`);

--
-- Indexes for table `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD PRIMARY KEY (`cp_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Indexes for table `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD PRIMARY KEY (`cr_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`);

--
-- Indexes for table `tb_fornecedor`
--
ALTER TABLE `tb_fornecedor`
  ADD PRIMARY KEY (`for_codigo`);

--
-- Indexes for table `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`fun_codigo`);

--
-- Indexes for table `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD PRIMARY KEY (`itenscompra_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `com_codigo` (`com_codigo`);

--
-- Indexes for table `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD PRIMARY KEY (`itensvenda_codigo`),
  ADD KEY `pro_codigo` (`pro_codigo`),
  ADD KEY `ven_codigo` (`ven_codigo`);

--
-- Indexes for table `tb_notafiscal`
--
ALTER TABLE `tb_notafiscal`
  ADD PRIMARY KEY (`nf_codigo`);

--
-- Indexes for table `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD PRIMARY KEY (`pro_codigo`),
  ADD KEY `tpp_codigo` (`tpp_codigo`);

--
-- Indexes for table `tb_tipopagto`
--
ALTER TABLE `tb_tipopagto`
  ADD PRIMARY KEY (`tpg_codigo`);

--
-- Indexes for table `tb_tipoproduto`
--
ALTER TABLE `tb_tipoproduto`
  ADD PRIMARY KEY (`tpp_codigo`);

--
-- Indexes for table `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD PRIMARY KEY (`ven_codigo`),
  ADD KEY `nf_codigo` (`nf_codigo`),
  ADD KEY `fun_codigo` (`fun_codigo`),
  ADD KEY `tpg_codigo` (`tpg_codigo`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `tb_compras`
--
ALTER TABLE `tb_compras`
  ADD CONSTRAINT `tb_compras_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_2` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_3` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_5` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_compras_ibfk_6` FOREIGN KEY (`for_codigo`) REFERENCES `tb_fornecedor` (`for_codigo`);

--
-- Limitadores para a tabela `tb_contapagar`
--
ALTER TABLE `tb_contapagar`
  ADD CONSTRAINT `tb_contapagar_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_contapagar_ibfk_2` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Limitadores para a tabela `tb_contareceber`
--
ALTER TABLE `tb_contareceber`
  ADD CONSTRAINT `tb_contareceber_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_contareceber_ibfk_2` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`);

--
-- Limitadores para a tabela `tb_itenscompra`
--
ALTER TABLE `tb_itenscompra`
  ADD CONSTRAINT `tb_itenscompra_ibfk_1` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_2` FOREIGN KEY (`com_codigo`) REFERENCES `tb_compras` (`com_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_3` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itenscompra_ibfk_4` FOREIGN KEY (`com_codigo`) REFERENCES `tb_compras` (`com_codigo`);

--
-- Limitadores para a tabela `tb_itensvenda`
--
ALTER TABLE `tb_itensvenda`
  ADD CONSTRAINT `tb_itensvenda_ibfk_1` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_2` FOREIGN KEY (`ven_codigo`) REFERENCES `tb_vendas` (`ven_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_3` FOREIGN KEY (`pro_codigo`) REFERENCES `tb_produtos` (`pro_codigo`),
  ADD CONSTRAINT `tb_itensvenda_ibfk_4` FOREIGN KEY (`ven_codigo`) REFERENCES `tb_vendas` (`ven_codigo`);

--
-- Limitadores para a tabela `tb_produtos`
--
ALTER TABLE `tb_produtos`
  ADD CONSTRAINT `tb_produtos_ibfk_1` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`),
  ADD CONSTRAINT `tb_produtos_ibfk_2` FOREIGN KEY (`tpp_codigo`) REFERENCES `tb_tipoproduto` (`tpp_codigo`);

--
-- Limitadores para a tabela `tb_vendas`
--
ALTER TABLE `tb_vendas`
  ADD CONSTRAINT `tb_vendas_ibfk_1` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_2` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_3` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_4` FOREIGN KEY (`nf_codigo`) REFERENCES `tb_notafiscal` (`nf_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_5` FOREIGN KEY (`fun_codigo`) REFERENCES `tb_funcionario` (`fun_codigo`),
  ADD CONSTRAINT `tb_vendas_ibfk_6` FOREIGN KEY (`tpg_codigo`) REFERENCES `tb_tipopagto` (`tpg_codigo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

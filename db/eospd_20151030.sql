CREATE DATABASE  IF NOT EXISTS `eospd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `eospd`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win32 (AMD64)
--
-- Host: localhost    Database: eospd
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `act_ge_bytearray`
--

DROP TABLE IF EXISTS `act_ge_bytearray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_bytearray`
--

LOCK TABLES `act_ge_bytearray` WRITE;
/*!40000 ALTER TABLE `act_ge_bytearray` DISABLE KEYS */;
INSERT INTO `act_ge_bytearray` VALUES ('664c7fed0a70448485afa73777d4ec8b',1,'test_audit.png','944e927217294f4a9c4d43ede6636fe0','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\�\0\0|\0\0\0=ӳ\�\0\0S\�IDATx\�\�\�|T����S����h�˲�l\�e�ծZ1��4�X�\�K]��RVV�\"\�Z/�\"\Z1�c\nĀ����D.I\�c�1f��E\�\�c\��>\�9\�03�I2I�\�L^\�\�\��\�\\\�\\2\��>s>sΜ1\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�/\0\0\0\0\0�+�,e�\0\0\0\0\0� ެ/\�J���\�%\0\0\0\0�s�m�ɖ-ܟ\�t\0\0\0\0\�y\�vk�\0\0\0\0�V$�\�T\�\��n\0\0\0\0\0�l�[k�\�\�\r\0\0\0\0@\��m�vz\0\0\0\0\0�m�=����\�\0\0\0\0��\�κ=\0\0\0\0\0Q�����~\0\0\0\0\0��f��vgK7\0\0\0\0�\��=\�\��̺\��\�\�q 5\0\0\0\0@�o�\�x4\�\�\�R\�߶6݁nG\�\r\0\0\0\0\��Ͷ�\�j�UM�g�m\�D�\��N7\0\0\0\0�\�\��k�[j��M�\�gz�\�\r\0\0\0\0\�6\�vBM�����Ͷo\�\�\�\�\0\0\0\0��\�֦���;\�f\���?3\�\�\r\0\0\0\0�\�f��\�n���G;�m\�\�\0\0\0\0t\�f�����\�vG�\0\0\0\0\0a��[��5\�i�}�n�\�\r\0\0\0\0],ά\�\�\�6k�լ)�M�\��\�^v#�ݲ]e]\�I\���(��(*ʪάj�r\�z\�poh\�E;�p\�\�\Z���Ud\��ƙu�Y}xyڤ������-\�m��\�@\�\�\r\0\0�h$}\� ý���2[\�:h�76�\�\�A��l5ڋͺ���C���3N\�w�\�\�t�n\0\0\0t\'\�J�ցg�r�+\�\�o��o��d��\�`�(�\�/G)�\�\�(\�\0\0\0\�d\�w�\���\�\�\�\n\�lg|\�\�D6ݭ5���\�vk�\�\��\�\�\0\0@�\�\�\�w�\�yj�y>\�jmskͶ\�Φ\�ޭ}�\0\0\0\04\�zK�#�9@�|g�\�\�O�@[�\�\�l\�tۏG�\r\0\0\0�\�\�\��\'RCH\���yB&�h�{��F�\�\�\��8|g\0\0\0hN��$^��l\�\�h\�o�=�\�\�<��\�6Z�?�\0\0\0&G/��\�+�8�\��\�l#�|w/�fy��O}�ޮ���\r\0\0\0t[YgƉ��Ysx¦\�\�(��\0\0\0hN��gxp\"\�!�9�Vt4ݝݼ\0\0\0\�L֛syp\"\�48:y8\�\�n\�\�F\0\0\0G�V^\�ˀI��>�a\�t����\0\0\0��>���\'�\�%+�\�\�n\�\0\0\0\0�`\�\�&z�\��D�\�\�\0\0\0�C`����f:��\�?�\�\0\0\0\��\0C�m\�f7r\0\0\0�~0tr\�M�\r\0\0\0\���Nn��h�\0\0\0�!0�й�Y��\0\0\0\��\0C\'ʲ\�U/^\n\0\0\0�~0t�8�\\[�\0\0\0�!0�Щ2��$���\0\0\0�7\�8�u\�.�\0\0\0\���\��i�\�\�|�\0\0\0�\�\�o\�]\�xy\0\0\0\0�!0�\�>\��m�\"^\0\0\0�~0���\�|�\0\0\0�\�\�J�\�\�\0\0\0�!0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�\�+\0\0\0�ul0���\0\0\0X\�`\�+\0\0\0\0�c�\�\0\0\0�:6``^\0\0\0�c0\�\0\0\0\0ֱ�\0�\n\0\0\0`00�\0\0\0\0ֱ�\n\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0��\r0��W�\0\0\0\0\�\�`��y\0\0\0��\r�W\0\0\0\0\�\�\0�y\0\0\0�ul0���\0\0\0X\�\�+\0\0\0�ul�Ƽ\0\0\0�:6``^\0\0\0�c�\�\0\0\0�:6�\0c^\0\0\0`00�\0\0\0\0ֱ�\0�\n\0\0\0``�1�\0\0\0\0��\r�W\0\0\0\0\�\�`��y\0\0\0��\r0��W\0\0\0\0X\�,���R�SRRfN�8qolllC\�޽��:P�P={��\���\��l��\�Ϳ#�\0\0\0\��\0\��-[v\�ȑ#\�cbbԜ9�U~~�jh�\�\����:�\��,**T��ϩ�6�\�\���\�_L\�\0\0\0@?X�JM}e}�~�TR\�\�\�j4�\�&*���H�\�\�\�SO=�&\�\0\0\0�!0���پ\��TQ\�v�	��\nq�����}��Üc�\0\0\0\��\0�˖-�G�lm3�?�W-]��\Z3&A�\Zu����k\�\r�#U�f\�Q���\�SN�\�`�r\0\0\0\����R�G���>)\�y�\�7^�b�R5�\�ԭ��\�5v̍*>�Z5t\�j�n���:�\�ޫW�<b\0\0\0�!0�\"\\J\�11?R.W�\��5zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�Ω�\�>�Ss\�\�=\0\0\0\���&N��wΜ\'\�F\�\�f5bx�za�|��V�Jy1Ioپj\�P}��v���{;�c5mڽ;\�Y�H�\0\0\0@?X��Ґ��c6z\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\��ջ\�\�0g\�N�\0\0\0�!0�\"X\�޽UC\�\�f�W߬���*.ڢvoU�w�\�\�;vlW�=��\�\�P/�\�q=\0\0\0\��\���R_6+�\�\�j֬�j\�o&���BU�\�]�v\�P\�\��o5\���\�\�_\���Tǋ\0\0\0\��\0����Ϋ\Z?W\�ֽ�bc��?�TN�ϫJK�Ր\�/U��NU\r\r�5�=\��b�\0\0\0�!0���\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��6\0\0\0\��\r�1��n٤k[�켼\�\�͌t\�h�X�D��x�Jz\�Y�̼��\���P]{\���\�5^�Au�X�\0\0�~��h��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���:^,\�\0\0\0@?XT4\�_8%\r��\�\�ݬ\�H{U7\�\�|?;��;\�	�ܳsu\�-M��\�	js\�\�V\��Չł\r\0\0\0�C`�EE\�}ԩ�{��G��~y�8\�Pˮ\��*.n�����zkwi\�^�Au�X�\0\0�~��h�?�*\�7S_~��J|\�i�0\�:5b��j\�\�+TܕC\�P�Ѿ\�\�\�\��\�Qǎ�EO\�{{�\�ł\r\0\0\0�C`�EE\�}�\n�b�\0\0\0�!0���\���\n�b�\0\0\0�!0���\�>L�Y�`\0\0\0�`Q\�p��\n�b�\0\0\0�!0���\�>D�Y�`\0\0\0�`Q\�p�¬X�\0\0�~��h�PaVmwO�\�@<\0\0@?XX7\��¬Zw\�hm]\�\�\0\0\0�C`��w\�]\�亅g�\�\�\�u\�\�W�/+)\��6��\�_ff�s:\'\�u}��z[�۔����\�\��z�\�K\�Ϛ5�\�c͟?K�>th�\�uUU[��G��7{�\�\�\�f�UV\�\�kj\n��\r��3\�8�\����\�Zi�i�\0\0@?X�7ܟ��\�\r��eYY+�.��\�5y�̆�H����\�;��r��sr�\�ٳ�JN�\�\\\�n\�ݧ\�\��l6\�o�3\�<CO[]�U?�\�`n\���\Z?�j[�i���v��+\�z>ϕ+_pN\�߿C���\�Wk�iyL\�\�gϞ��}_�\�r~ʔ�tþ/\�\���^\�/��\'z�ѣ�\�\�Ͼ\�\�G�\�\��\�\�s�E͘1\�l�\�շ��\��\�[�g�\�\�u\\(\0\0\0�~��m���-��LL|L�\�oٲ.\�m�.��\�*6�\���\�_�\�Ç�\���\�yy\�����*}^[ΟrJo\�|�o6\�w�\�\�J}��cX[��ԡC��˗,���KF\��`�\��euu��oA�\Z\�yH.�55\�\���\�[�\���Y�Xmذ\�\�y\�\�eg�R��Unn�~\�r^�����\��?\�\�w\�9?PÆ]����|�\�/�zm�[�i�\0\0@?X\�4\�iVee�Ԟ=٪��c���ݡD��\�x\�\�����?�k��S99����9\�\�N5�\�\nu�\�\'�;\�\�lb\�6�\�O�\�\�\�R����@����<O-\\���\\�w7\�x\�F��\�.W�*/߬/KM}N?VEş�u�\�җ��-R�_��y����\�\� �\��^�*\�\���T\�|�(\�q\�瓛�z��]�\�\��2��\��c\�}yN׆F��(��(wՙ�Ǭl��1+ެ^�\��C`��Iý�Y-Y2O]tѿ�-[֨ի����n��=�A}^nSX��\�\�I�\�K^/e\�-\�\�-\��\�=��\�c\�^����\�&%=��g���P\�\�O\�˦N�`}W�^���=}cc��&\\]]������Wx�\\�m\�:=}v����f�\�\�z+��m��=[o��ˏ-Sk֤\����U|�}\�O~2H�}��oy.�\�\\nߗL\'\�\�\�P�\\2\�l�W{=�\\\���X�\���5\�sw��5Ƭ\�\�\�5\�YIf�c\��#i��#��#�~��j�?iVr�]w�R�NK[��B{^���\�\�\�.�0\�j��_W_���]\�\��~d���.+\�v\����\�Ի\\\�\�_\�<�4�\�ٖ�U�\�U�^����\��+ӧ�η�Lo�\Z\�~�?�8zt��}\�\��|mm��\�\�iW�Nҧ\�\�\\&\���7^�O.[��I\�h74|��O\�\�\�\�X윗\r��j��\���f\�\�g>�\Z��7��AVt\�a��;G\�f}a\�L^��#�~��n���Y�\�۝\�ӧ\�\�u]f\�\�~o\'u�\��}q���v#+�rWW��v�\\\�\�\�_\�/^,����(V\�\�̦�bUS\�nV*��ý\�ld?V))���\�\�\�oذT7��&ݦ\�n�\����J�y�\�\nש�.�P7\�\�&<\�j\�6{}Ǝ�^\�zk�\�,o\���#�Tv�\n\�h\�zM\�n��_�\�\�G�YY�~_�\0�\�w�w��-\r��a�Y��ڝ�rý�,9x?\��\0�̆��Y�\'��P��\�[JK7�\�5fC[m6�\��\�Ʈ\�\r��\�kk\��\�\�Z?\���\�l\��\��j\�\��\�v7\�ǟKr򓺡ݷo�n�\�\�\���\�y\�.\�if�\�l\�?���>\�\�8v�\�y^r��>`Z�\�Hg[\�\�\�\�\��Oy\\�~�w�B\�V�_�`�3�\\�\�nu\�e��fϞ�/�\�\�\�\��^\���[�o�\�p&ߟ˲Vr\0�O+G\�\�Ix?\��\0�Ć�c�u\�H���]�\������\r\r��ÇK\�M7\�\�2e�\�<���ڞ{n}Z*--\�:\�z}CWz�\�,��ZC%�#\��\�\�\�\���Æ�\�l�SUFF�JM}F?�}�܇�w�^\�u���?�\�µ�	��4\�V]r?\�&8\�l�\�M\�\��\�}����\�\��[�x���{�\�kc\��=c6����\�{\�u\�P��7o����{\���Vjժ\��QCS^�1}\�?�Vrd\���k�eK�#�\0\�G\0�`\�pW{UN\�\nݼ�\��\�t\�lv�\�fڴ�\������M�\Z?\�\�\��\��>�\�j8_�w�|�|II�>\�r}h\�;K�oj�r�)(x\�\�6<����<\��\�\�u���}��|w��&O\�\�\��\�;\�\�c�?0\��������m\�\�\�\�\�ת[o\���\�ۗWTd����B7���z�����1&��}jp\�\Z��9����C`�E\\\��QDUSӇ�2M��K{��\�q\'�IbqtH29x?\��\0�����\n��\�q\'G��#\��T�\���S\��!f�\�N�;��\"萭\�\���,�\Z\�J*\�*J\�\�\�{W>\0\�7���C`�ET\��f�\�n�\��i#\0\�Q./��@?X\�4\�T�U��;9:\�)@�sT\�\�\0�~\��1\r��T�U��;�-\�:)\09\�@?t����\n��\�q\� G\09\�Н\Z\���0+\Zn\0\� G\0y,*\Z\�2*̊�\09\�@^�\0���{/fE\�\r�\� /`�EEý�\n��\�@�\0r�0���\�\�M�Y\�p G\09\�`\�\�O����\�l�vQaR_}U�Ϝ5.��\� /`�E���|(?�\�\�RaR\�\�?��9kv�\'\0\� G\0y,�]u\�e\�\�̙J�F5v\�Ui\�I$O\0\�@�\0�X0\����˵�f7<\�=zT��&�< G\09\�`���&%=H�5f\�UK\�Y�K�\0�#�\��\�0\�\�3O�/*ZA\�ۅ���t�9/�u1y@�\0r�0��G�9\��w�\�k�{�\�Qc·1\�	\09\�@^�\0�¦����l޼�>\�;ݡ�ζ���n\�l��\�@�\0�t\�6�g\�\�\�~����L�e��M/lh(�1\�\��\�\��䧿\�h\�\�\�\�;\��\'\0\� G\0y�{�Ԭ9fm5��z�\�)�\���m�\�8��\� /`�!�eY�/y\�\0r�0�\�9d+�˚W	�\�	 G\0\�@^�\0C\�\�4�﮽���<\�\09\�`\�!\��\�v�\�e!O\09@�\0�:&\�h~P2\�\�\�w�\�@�\0�#����v�uۮq�<\�	 G\0\�@^�\0C�d�z����<\�\09\�`^K[��.7y\�\0r�0�\�NY�4\���<\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\�\09\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0�#�\�00��<\�@�\0�0��W`\� G\0\�``^1�\0r�\�00��<\�@�\0�0��W`\� G\0\�N�,k@�T;y�X�y�#�\�\��\\�4\�cx�X�y�#�\�^v\�v�Y�x�X�y�#�\�ސ\Z\�q�<,�<\�@�\0����\�r\�w�ٺ\�\�\0\�#�\� /@��.7\�\�fa\0\�@�\0r��d\Zl\�fa\0\�@�\0r��\�\�y4\�	�,�<\�@�\0�t��\�l\�fa\0\�@�\0r��\ra��0\0� G\09\�\"g�)\�;%%e\�ĉ�\�\�\�6�\�\�;\�\�pQ-TϞ=�;���?>|�F�\�HF\�@�\0�#��tc˖-�g\�ȑ�111jΜ\�*??O54|e�\�\�QA��nEE�*1�95p\��\����\�5_\�Y�y�#\0\� /\�Lj\�+\���맒�^P.W�\�46Q�X\�ɋT�>}�:�\�Soba\0\�@�\0�#��t�f��.PEE\�\�\��[\�Uyy�\�۷\�?�\���\�,�G\09@�\0�ҽ,[��ٲ]T�\�l\n]^�t\�Kj̘5j\��\��\�Q7ďTɋ��MG��\�\���SN9\���\�^\�y�#\0\� /\�h\�(\�{\�\�kꓒ�7O~\�U+�/U�>J\�z\�X]c\�ܨ\�\�UC�^�\������8��^�z\�0\0� G\0\�@^�TJ\�11?R.W�\�6zU¨x\�h\�p\�H�~��\�\��aW�Mwl�\�\�\�\�\��Ԝq,�<\�\0r��(4qℽs\�<i6�_7�\�\�\�櫬�2TʋIz\��U#�\�\�\�\���\�\�Qm�i\�\�\�i΂D`\�\09\�K��Ґ��c6�\r\�\�\�\'���Tm\��\��\��\�\�T�>s����C�?S\'�o��\�\��ջ\�\�0g�N`\�\09\�K\�ݻ�jh�\�l\0\�\�c�R\�E[Ԏ\�j��]rzǎ\�\�\��{�\�%��9\\\�d�%X�R\� G\0\�@^�\�R\�\�f\�r�]͚5SM�\�$URR�\�\�ۣk׮j\�}��f<x���\�\��ޖj{u��ě%GeO���!v,�r�䥛4\�u^\�\���Z�\�5�SU�Q�zp�}^UZZ��\\~�z}u�jh��\��W7H�O�-[�?�\�f�\r�#\0\� /ݤ\���S\�}wL��!]\r\Z�j��\�{e�U\�\�*�\�?��\�W�\�W^2��4�{��W^�\�\�W�o��\�\�>��W�ķ\�n\�r��\�\0r��hk��9�u\�&�[\�\�d\�\�mVof�\�F{\��%\�\�ŋT\�Ϫg\�=������\�\�kF��o���\�\�Ih����\�;\�,�r�Q��f\�g\�Z��ͪ��p�Y���i\�Lk�(n��\�\�c�~��D.���\�ź�����-P\�\'\�S�;�I�\�\�Q3g�V=�ģf���~7�~���\�^Q��\�\�f�-\�,�r�Q��qf\�ZM�+f\�f\� �N����1V#�dM�oք\�l��pJ\Zn�	�\�o�Y����n���~v�5w\�\�g\�\�[��1�\�朷�����o(�Fp[����\�\0\� G\0\�4/\�Dg�Un5ӽ���4�\�[ͺ �\Z\�N\�ݻM=�\��\�\�\�\�Zv%�WqqCԯ\'�\�[�KK\����\�eo(\�\�b-���\�f�\r�#\0\��ܼ�7\�\�\�E�W\�\�>\�~�ek�\��}\�U�o�����S��\�\�*a\�uj\��+\�СW��+���f�}\�\�\�\��ߣ����\���T\�+�\�P:�{8����\�\0rDh^d%^��\�I�w�u���\�>BuQE\�JkH����\� /!2\�j�c:�~c����-\�f\��\�Eo(�}�q�t���#\0\����HS,�ǝ���Ժ�A�\�p���\"�\r\���g\�3\�N\�o0|oǁ\�X�\�@�\0D@^\�H\�3O�c\�w��Fv\��7��*�\�P|�DK��\���\�t�M7+8\09\��0΋�����wk������\�!��*B\�P�\��}���� �n\�fۮ�\��nVp\0r�#\0a��\���K�[�\�\�\� \�E�o(��`\�sKM��\�S�L\�w�Y�\�@�\0�Y^\���\n\�cV�`��~\�0�m\r�����\�ֱ�\�N���\�t��\��m�ٽ��\�@\�E�W�8ď�h��\��\�+���k�\��k�J\�#3s�s:\'\'M���\��6\�\�\�={6����^�\�yޮ}�v��O>�M\�c����]�f\��\�gg�Vg�yF��甔y��څ�\�hO\�\�Z\�l�\����l\�f G\09\�\�yYk\�m!~Li�°\�+\��U\�l�j���={�\�\�9f3\\�\�?1�q\�4\�\�8��\�Z��ަ��V:\�e\�\�U�1�0\�}Z.��-\�eZ�\'םrJ\�\�\�С=z��Y\�g����\�\�^4�\��U]��\�\�;V\�\�~+*�TMM��\�\�[�&O��3}qq����p��lҤ_\��8qq?է�6lX�\�;\�ܠ_\�.n�[�\�v[�\�@Mw�v6\�6�\�\�\n@�\0r �\"�w_\�ǌ1\�\�0n�=�j��n�?mw\�\�g̘�ޫ\�8�K�\�\�������#}^\Zr�i\�\�Z�Ǝ�AM��f���\�z�\�z���?\�\�WJ��\�_�\�ǲo3q\�mzZ�\�\��\�ii�׫k��\�\�{\�y�\�x\�\��ȑ�԰aC��\�\�\�~ކ\�Z�\�\�\�X\�^�f�s�\�]nk����{�\��m�^�0\�i�[j��:\�lw����\� /��ά\�C���x\r\�p{nՌs7\������5��\�\�Ym6�s\�i��j6\�\�F�;Ʃ\�ҍ��i�3���2m]]�JOOQ��.|Z_.\�\�_�\�\�\�]x\�Ul\���<\�\�\�שI�n7\�j�\�yz�4\��er�ii\�\�m\��\�e�����,\�l\��O�\�\�^\�<gy�r���Z��\�\�z�.�n\�\��隚m�\�o\�\�f\r�\�\�\�\�eMwG�mߦ�\�t���#�\��TEb)��v�ܶ�*_��7\�!��\�k\��C_/\�=�MJzB\�]W��JN��/�:�\��\�Y�\�\�\�=\���u�\�\�\�_���\�4\�YY\��������?{\�\�\'\�\�[\�o�}�ڲe���~W\��С]\�s\�\�X\��?��-R��[[\�\�\�ٯ\�\�h\�k\�\��L\�n\�[���\�;\"ɺ�>,cY�\�@�\0�Zl\�\�@\�4\�[,\�#���߾����R]~�Ŏv��\�;\�I�.+\�\�4�g�u�:\�\�&Xn#�_r\�`UP�G�\�~Z\�\�\�[�W�zA_�o\�v\��8۶�S�\'�W����\�\�R�8˗\'\�i]���=7��\��\��2�\�\�**r�\�\�\�\�2���D\�Ǐ�&#\�e��#F\\\��\��\�\�lݾ�\�QA���}��\�h\�\�iiw[~�;�p���#�\�¼�\�֛)\�x\��I\�U\\�i6�K�}�^���@UW8����]\�L/\�/�\�\�+ԁ;Tzz�n\�kj\�\�;�\�popn\�\���s�\�ctC\�\����\�&M�\�l�����e\�3N�f߾m���}T�U*//\�j��9�m\�\�\�Wzݷ�?�\�o\��ii\�\���u��;\�ذ�\�:\�\�|��=M7\�\�f G\09\�\�y\�(\�Ǜ�\"�\���\�l��/読-T˗?�c���\�f;_�{\�\��zws��3��ON~J9�\�lj��\r�\"}Ycc�utr��\�o�}�\�\rw\�\�K\�\�\�\�яa��q^\�lZ��kj\n\�\�å\��몪\�q��\���\�\�6�\��Ч��=K͘1�]�c7ܭ�\r\�&��[�������\�ts�rVp\0r�#\0a�~��孖>\rwM\�e\�\�jZMj�JIq����ڹ\�\�p�~\�0��e*#\�%����\�\�ܾN\�C�fe�\���7\�\��.\�G֮໛=/\�ǵ/�w���\�[[��X\�ߦ��\\.��\��m\�����=��\����\��\�t�\�\��;ۭ�Nw C~���\�@X\�e�Y�\�Pt�\�\��3H����\�\�J\�\�Pa6�Ku\�t�p�����ڙ\�\�\�.�:_R�>\�r��,����\�75}\�LSP�f6�\�\�\��\�\�}P%&>b6\�睊S�SM�6Q��*,\\�N;\�u\�\�^�\�f8��ߪk\�\�T���\��QW��u\��\�\�\�~.�a�\��\�[�\�j�<\�\�\�\��D\�XimskͶ\�Φ\�ޭ}\�SVp\0r�#\0ᑗ\\#t[ä!\�\Z�3H�\�WSSUD\�\�z�|C	����\�v�M��x4۬\�\0\� G\0\�(/��^n�f+�\�;!r.�}C�-ݾ�w\�i�;\���\�>�\�w�Y�\�@�\0�i^���j���V#���wr\�]EuQE��\�O�y6\�mi��Vn\�O���#��ĘuЬ�t��Z�?(�g�RR]T��\�{�4\��\�\�\��v��o���#�\�%D\�\��Ŝ�f^\�wB�\� �*�.�(xC\�\�\�\����:X�\�@�\0�q^&Y\�qgm\�Ժ�G�a)�\�E%o(�\�twv�Vp\0r�#����l\�-g�\�|\�Z��}\�j\�b)UAuQE\�JGwg7r\�\09@��\�K�\�����v�\�\�ַ\"\�}��A\�4��z�ꢊ�7��U����\�\0rDQ^n�\Zo\�-|�\��	�\�:ݺ�t�9� Ѭj�ўdD\�\�\�[h�˩.�(|C	v�pv#g�\r�#\0\��Ҽ0\��\�Z\�w���\�\�fe\�]\�c�y)�\�E�o(mm���Ug}\�\�\09@�\0��\rw\�E\�I��\����f�6@�\0�#��Dyý�ꢊ�\�\�\�n\�,�r�䥻4\�{�.�n\�\�f�6@�\0�#��t\'�|\�w\r\r\�f�\nq}�U\�>s���0��\�$�m\�\09@�\0�\�m�\�C��K\�p\�Z����\�Y����ka�O��\�\0r��\�᪫.[7g\�T�,�B\\c\�^�f�v���G\09@�\0�m�A\�\�|\�r\�	m}ңG�\nsı0\0� G\0\�@^�T��?,MJz�&8�5f\�UK͗>���G\09@�\0�\��y\�i�EE+h�CP��Kכ��A�.fa\0\�@�\0�#��D��s\�9�\�4\�\'�\�\�ѣG�\�=�\�\�y�#\0\� /ݷ\�>\�\��7\�\��Nw\�g\�ڍ��\�}��� G\0\�@^��A={~/\��\�O=<e\�-�7mz�`CC!\rs;ꫯ�\�[����\�h\�\�\�\�;\��0\0� G\0\�@^��K͚c\�V�\Z�IW.\��;\��\�_q)\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�0` G\09\�\0`\� G\0y�\�\0\�#� G\0y�y�\� /\0X�y�#�\�\00�\0r�#\0\�\0\�\0r�#��\0`a\0\�@�\0r�\0,�<\�@�\0�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\09@^\0�0`\�\09\�\0`\� G\0y�\�\0\�#�\�\0y�y�#\0\� /\0X0�x	\0r�#��\0`a\0\�@�\0r�\0`a�<\�\0r�\0,�G\0\�@�\0����G\09\�@^\0�0\0� G\0\�@^\0�[���j\'/l� G\0y�!f�Zi�\��2��\�\0r�\0�\�n�\�.2�/l� G\0y�!-4\�\�xyX`\�\09\�����]n�\�6[�Y`\�\09\����]n��\� G\0\�@^\0t�L��\�,�r�\�@���h�x9X`\�\09\��\�c���\�,�r�\�@\'\Z\�6@�\0�#��\0\�*�z���̜8q\�\�\�\�؆޽{��-*�\�ٳ\�w\��gÇ\�h�\��Q\��#rD�\�9\"/@7�lٲ{F�Y�\�̙����TC\�W\��;��%�cQQ�JL|N\r8����{͗�bVp\�E�\�9\"G\��#�D�\�\�W\��\�\�O%%��\\�Fsa\�D��JN^���\��թ��z+8\�\"G\��#rD�\�y�x�|����\�\�B\�[*DU^^���\���{�~�\"G9\"G\��#rD�\�Э,[�����h���py\�ҥ/�1cԨQ׫믿F\�?R%/Jj6\��*/߫N9\�/�\�ߝO�#rD�\�9\"G\��#�tr ��#��OJz\�<��W�X�T���(u\�-cu�s����V\rz�Z�\�\�P�T���?\�իW+8\�\"G\��#rD�\�y�DJ\�11?R.W���h���Q�z�|\�\r#��\�ϮSÇ]i.�c�MOu�\�>�\�O\�Y\�\n9�\�9\"G\��#rD^�(0qℽs\�<i.�nV#�ǩ\�WYoe����\'�W��/�\�.ח~oG���M�w�9KY�!G9\"G\��#rD�\�bc�4\�\�\���fu�\�\���~��nyGe�i�Z�j�Z��F}\\������շ\�~\��vT�\�\�ws��d\'+8\�\"G\��#rD�\�y�@\�޽UC\�\�悡�Y=6\�!U\\�E\�(ުv\�*\�%�w\�خ{\�!���\�_2\�Y\�b�Q\��#rD�\�9\"/@��\�(�e�r���f͚���f�*))T\�\�\�ѵk\�5\��V3�O}��\�~oK���|��\�9\"G\��#rD�\�y�Y\�]\�U����u\�^S��?U\�U��\�\�U��\�j\�嗪\�W����Ϛݞj��C�(rD�\�9\"G\�� �\��p\��6��aCcUMu�z�l�\�ݼQe��G���J��\�K\�B;M\�t啗���\�\�o����\�\n9�\�9\"G\��#rD^��Z0sj\�M�7ea���Y����\�+�/Q//^��^xV=3\�i}��\�/-T\�^3Bm|{�\�}P\�/Vp\�E�\�9\"G\��#�DՂ�\�N=6\�w����\0^��Xג��U�\��\�y\�\�>����#j\�ߪ\'�x\�\\(g�\�ͼ\�\�>��+8\�\"G\��#rD�\�y�j���S�`�������\�i�\��,���?G͝�z\�ٹz\�,\�1�\�朷��T\'+8\�\"G\��#rD�\�y�j�|ԩ�{��G��~y�8�\��]��U\\\��\�	\������\�z\�\��b�Q\��#rD�\�9\�\"Y\�sn�v\Z\0�]0\�U�o�����S��\�\�*a\�uj\��+\�СW��+���\������\�G;�=�\�\��+8\�\"G\��#rD�\�Qb�;���{\���&\�\n9�\�9�\�9\"G\�e�\�l�Ջ�	z��&\�\n9�\�9�\�9\"G\�\ri�\�G\��k�|�\n��╀\�K G9\"G\��#rD��\�r\�w�ٺ\r�o��7*L*JWp\�\��¬$\�\�rD�#rD�\�9\"G\�(l��.7\�\�ڿ`>D�IE\�\nN�\�J�lQ�,\nڌ_rD�\�9\"G䈊�e\Zl\�:k�|�\n�����\0[\�p\�\��#rD�\�9��)Gq\rw�~Ղ�\0&E+8	��\�\�\�\'�#��#rD�\�9\"Ga\��.7[���-��J�IE\�\nN[W^�i\�\��#rD�\�9�\"=G̺Ϭ�fU�Uo�\rf}b�w3�iM�\�\�Z*L*\nVp\�\�R\��\�\"G\�\"G\���\�%?��k5֪��o\�Z)�M\�O�0�_�i\��]]��\�0~\�9\"G\��#*\�rcVvM��\�j\��T@�\��T�T�\�ttw�Hߝ��K�\�9\"G\�Q�����H��ͳ\�j�\'�u�Y}�i��5Ⱥ�\�n\�%\\>�bk7x��*L*BWpZ; M�\��#rD�(rD�(r\�\��w�\�t�\�\�\�\���\�}�{2�\�w���\n����\�>�k�nY`��#rD�\�9\"GT$\�h�O�\\i��f��ܮܧ\�fK7\�|��I�K�߶m�����>}\���\�\�奩#��ɓ�CM�t�Wmܸ\\ee-S-=�\\7mڝm~^�W\'��\�;7\��55\�\�����@׆\r���\�s�߷o�\��%%TYY�>-?jVr\�͞��\�\�9\�\�\�*�~}#h\��`\�{f\�i�\r�\�\�\"��5\���\�:�E�\��9�1�w#�\�_�\�\�}\�\�湆�\�\�h�\0�����JK\�\�A��\�Qze_N\�{\��\�3\�<C-\\��3���\�<o߿�?�k��ӧ�TK�-\�\�t\�\rm~n���P]}ul�\�Hc \�TW\�\����n6,�\��\�^��~o\�\'ޢ�l���F\�?�\��\�;~�rs_\�Ӗ��\�\�/X�^.\�\�X�.�\�B}�}��\�\�/�\�\�s��\�O�e\�d������\�v���C�\�9\na��_\�QQ�#\�Ƹ��mϦ�ܧ�p|�\\\�j;V�t�\�;�\��\�̗�\�={���w7\n?�,=}��R�\�\\i\�b6\n��[��\�\"\��MM\��>\�:\�\�\�\�\�#��G�\�V��\�\�KJ2u3Q\\��.�\�\��\�{�\�W\�\��\�׿\�L\�r}��\�e2�<�Çw�\�\�g\�i�����5k�UL\�\0\�6r���\�\�m�\�ߦ�\���\�\��:���#p\�ư�x\�NԖ�ϕ�&z\\Iߡ#G\��(GTh��#*\�r4\���\��ŝ|�޻��k9p|��q�UW��\Z0��\�\�Z�N9��z��{Un\�:L�&ݪO�{n�\��\�{�\�\�^�F��JM�2\�\\YN\�ӟv\�)fðPUW��=vS�{7Si6ZzN��\�ر\�9\�e��i�y�fz\�i\�zk\�}�>���R���#GJ�i+*6\�\�jk����\�\��\�\�h��F\���\��w\�u���\�ѧ+�\�}�ܻ\�\�sh���@+�VVZZ\��7}��\�#\�;t\���\�\n]�#rDE]�<�n\'��\�x\�`+7\�o�\\\�b\�Օ\�7�����\�\�o�Sa\�\ZU^�Q�w\���\��-s\��yy�Y��\�\���@��g\�[֖�ș��\�\�\'%ӧ���9�a\�\�*&\�_��)j\�����\�\�K�ٳp�+.^�o/[\�<\�\�w��l64���V�Y��\��=--ɹy}bc�]M�6\�l2�\�\�4���\�Yg�i6;�m\�ױ��#D\�X�Ib�\�\�JN[Wn|Wr�bw���V\���\�\n]�#rDEU�Ƿ>���\'��\��\'\�bh�\0�`��M����:�\�tðj\�szW҇��\�����_{Zw�p�>�o_�\�$\�\�46V�@�-��}���V�nj��\�\�e\�e\�&\�2ْ8b\�\�^\�ee-ѻ\�N��_jҤ[t\��\�fd�\��y:T\�ܷ���@n#M���I�\\�\���\�\��\�\�7��\��ȑ\�\�X\�[�_B�`�G\�qm�M[W2Z[\�	v\�\���?\�-m}�\�9\"G!\�u\��#*�rt�\�tY\'����x���Z�^0W�XlS��+Ե\�ƪo�Z��;��y�TS����LΗ��ӷ��\�\�lke�Roɒ��\�\�W�[��\�\�\�\��rz��GZ|~2\���3�]v�\�	^�mܸT\�Ծ�ꫯpNoذؙn��=�\\\�\���[U����V9\�;1�!��\�\�ܦ�~��\�~}\�\�\�\�\�\�T\�q23SZ�_B�`�+��OF�ݍ.\�JN�v�\��n\�\�JN[_+rD�\�Qr\�9��m{\�Ɇ\�\�\�t2\�\�C�ɓow> :�A\�R����\�\�\�nѷ�|<ɩ�\�(/[_\�r}�\�\��8U]�Yh\�\��!�\�y^2PS�\��\'[}m~�7\�i\�\�\�ٳ>�טEw�\�2\�孜\�\�Y�O\�\�tɃ�3�}̾�\��Y�\�	�\��� e�9��\�\�%\�\��y\�\�\�\�S����O=�S��-[^WӦ�Z��=\�Z\�q�\�ȳ	�t��\��6�@�4\��XMM�+\�yY\�-t7\�t���m~i\n.�\���;z�\�\\`�h\�^z�����\\�{l�l\�\�_9竪6y4\�Gv;�\��w?�V=\�u��X�\�\'�\�\�z�\n\�+\�n?l\�e\�B6C_����\�~>���\�\�\�\�\��On\�r\����\��lY�/�\�yy���Zwт\��\�\\�ii%��+7}>\'��\"G\�� GR2f}��̦y�u���ԧ\�G�̙��^\"\�o/{V�?�\n�!{\�c\�\��\�̀\�=��T}��d�:v�Թ\���\�)V\�\�/\�LH�/������)S~\�d\�^V\�ʿ�_�&ݬ�\�^\'qq�\�\�R6�d}\����\\9\�9�f\���nK��\�\�Q��������\�\�s>�O��g\�1\�>�Ƈ��\���>�\�=\�\'L���\�\�Z��7\�ͯ�1j�7\��\�5\�y^\�Ϟ�[��Aɋ��}ʰ\�\��!]�\���Ӳ�\r��\'��W�o���W�^6\�\�\�m{_\�0\�Q�\�\��\�\�3\�\�>�\�􂹲MU]\�����\�m���\�B텤�45U8ӺWr\��m�\�o\��\�)\�\�6��~\�\�q7lH��\�|���\�\�\\.\�ᬳ�?\���#E\����^e�����y.\��\�\nG�nt\�\�\�\�}���\�\�칤�=�Zu\�\�N\�\�\��\�\�i�^�&%=��oh\�km\�\��&S`�i�c�<c6U���\�]�`��d4�>����ӑ�ߕ��0z�\�9\"G!ȑ=�d{\�oY	�\�2`��d\�YƗ�)�1�z�sz\\\�tr�B�{\���\�͛\�5�dѾ���>?�O�s\���c��r�iY\�_y\��X[�\�%k�m%s���s\�\�\�P\�\�~�^�ع�\�8���\�jtr����ܨ���,�\�Q���6�g\��/�̖�26导\'\�u����G9/����cGz5\�vfKJ\�\����%K�V^�#=N,x\�:F\�.\�$W9\�CƬ���>���j٢�!\�m�\�]\�[\�r���\�\�\�:\�r{����sb�\�ط\�\�\�&c\�+��}O��\�\��X\r�Z�^0\�b\�\�\�\���S\�;�m\����22\�9/+\n�\n�}^V��O�S7�%��W�e\�Ç�镆\�´�\�A�s�|\��\�z\�\�SO\�\�l�\�ҵ\�\'�����oP۶�\�[\�,x\�\�={\�t\�X<�����Rsee��\���w�\�\�^�\�ۗK54\�\rD�>���L�5�wO��\Z\�Ն�f�+��㫇�-	U\�\��n�9\"G\�\�\�\�H\�р�d�Կd\��=F\��\�4Ş�q\��\Z5j�\��\�q��z��>�܏d\���7\�\����\�9\r�\�!?T_����O\�_y�C��6��<\Zˬ�g<�p\'\�-𞙐9R�˽5o�>-9�\���e\Z��|�f/+\�\�\�ݤ��\��~\�R���\0\�\�yE���^�\�c\�J�=w\�1F�?45�\�l�ȴ�Qϲ\�\���-\�k�f�\�\�62��v�\���\�RS\�\�Ǫ�\�\�\�Iv\�\�&���\�\�ͼ}{�~\�GN{��~\�\�R�\�lL\���7\�/~\�y���<�}����\�\�~< \�����]��Z�.�$t�����5]kG�\�\����.j8oQ�}�\�9\"G\'8Guu;�ߍ\�\�Z\Z�}�r�\�\�͕��\��x\�\�x�\�>���\�\��\n�\�ݫ|777\�j�+Z��\n�t�sؿ�k��G�i\�\�2�-v+�cef��:/_>\�l8�\Z��V\���\�Ho�4�\�k<K\�a?W�9��\�\��\�o�K\�c?vi\�\Z\��\�.L�x?jӼ��\�h�\�g\\\�\�\�\�\�\�\�II\�\�d,\'\'?f}�i��]\�)z7u{z{�\�l��dڳ���j=��s�p\���\�L\�m\�C�a\�.�z���\�\�󹺛\�\�˔��\��\�\�z�^��������3\�y�~?�c7Х\r��T�T-�}߬}W&\����\�t�w\��V�_rD�B��\�֑̅�_R�V=c�\��P?|�>\�>\��Kδg�y�\�$_�O\�۷\�i�\�i\Z�(\�\�\�\�}\�\�\n��\�c��뮛��>\�\�^\�=Zh\�6[l�\�\�\�-\��}ڕ��\�\\y\�o6>\�\�w7\����\��\�m\�^k6��?u�\�\�ɷ\�\�\��_\�LW\\��&L\�4#��o�\�\��9\"G���T]~��9cMƿ�.+{\�K�\�\�9眭�\���3NdO-s\�ɳ��S�G_��i\�ݲ7;e�\�\�\�֖\�uVS��߱g�[;c�yi�\�\�fO�z�|�\�\�Ը�Pˇ\0˗\�\�_SZ�\�I\�q[z<C\�R�\�ܯ��ƕ\r\�G|�\�چ�<\�\����s��nG�ӯY��9\�ظ\�:�ҫ�\�.%\�V��*\��\�\�Y\�%�K\�Ef��bӑO��Ԋ��\���ӕG�m\�\�\�1���XgBN=�=\�t\�\�\�\�bN<\���<\��\�\�2�JԆ\r�����\�UFF�3��\�^�n�q�����g\�Ӿ\�\r\�ܑ�\�̑�ai�\�)�\�Νfm��_M�r�\�,����oc7ܕ�oY\�-3���><ǝ\�\�\�־�W��\�\�\�ͼ�3\�\�\�\�[�\�\�\�\����\'�+�\�j֬\�8�%+\�G�l5���\�Ƨܷ�?r�\�=v�H_\�;��(�h\�\���*��=�˵\�Yn\�\�\�\�\�s���~䯊�_w>�1,�rWWo�\�\�kL\�\�d�\�\�\�\'cW� M�\��\�{k8���\'\�\r�X�\�\����\�I�n\�e�\��\r\r�\���\�\nW\�ol۶\�j\�\�[\�|�\��`\�\�\�[\�7\�\�r\�\�\�9c_\�\�w�\�\�\�s��F\�Ο?\�\�\��\�hy?\�(\�@\�6\�JJ\�\�&y�Z�`��}��\�J�\��|s%~��\�\�d-����\\����>\�r��Hț�\���f.�S��v��t3.\�\��i)Y`�w9��oY�+\�\�M\�лC�\�9-ׅ\��	т��-�$��\�5m\�wQbt\���\��_U�e5�/;㡴4�\�t�\�;�\�˸\�\���*-\�Y�\"#Y�\�\�[\�\n�\�$&>�?��\�O\�e2�)\�\�s�-��\�o���?ֹ#Gљ����z�o��7\�֑�G:��-i�%\�\�o�\r�6�Q��u��I��\�\�]\��q�\�Y�?�A��\�t7\r�f�����~L{zόUTd\�\�\�1(\�m�\�G�l\�\�#�s�ǲ�*���H\�\�;�%��t�\'ߢO�\�\�G͘q�\��r\�\\\��O�\�k\�]e߱v\�\"G���\�\�?\��1C�L\�z�\��[>ܲǅ\�\�w�\�ȑ-zN\�\�2;[r{C\�u�\�lj78\�p�W?\�\�س\�Θ</{QƱ\������\�G���l\�߳\��Iɠ�\���ڙ�S�F���\�\rtm\�]�:|�@��76�\�rҟc}j��^�\�+���~G��k�LŃ~\�\��\�~�s\�}D\�\�Ӻ�\�:E�nh(QYY\��6s\�\�g�\���\��\�\�\�Դ\'$��\��h\��\�Vn�v�\�ػ�����\��\�9/[����\�\�\�m��/ԧ�\�.,\\e�Hqn\�^�\�u���^+��I�;�\'�՗ٗK\�`\�FV�d\�Ai:�oyx\�Z�ʲ�l��#Gѝ#�x�1{��>\"\�\�sܸ�p_\�?t\��y�}\�~�\�G�nu\�\�é\�o�Y�qe?����uw[�$yq7ǧu7\�e\�\���\�޲eE�\�]��ƶ�\����Ƿjɸ��s�2\��6���w�#ޏ\�w{l\�x��C\��ǹ^Ɨ\���j�2\�SS�\�\��fF������(\�_w\��s]�\�3��\�L\�\�eek�_\�Hu��l�1�\�\�~�;\�ƨ\�.\�u\����{��r����\�\Z\�L\'\�\�л��\Z\�\�G\�rY\�\�e�?�\�\�m\��{��\�{CZ�¬�2\��t�\�d[[�\��\�f�\�y\�b\�wC\�s!�N7\�vs�r\�}��\�mݠ��\�c��:/�!o\�����6a>^mYh\�\�M�+9�㍋��;i7��|Ĉ˼.��v�\�̕�_蕓ŋ\�[�g̘\�\\f\�-=\�\�GY\�\ZsE\�sf�\���\��Y�b=\�\�i��9�![4|W��i��-��p\�9�\�\�\�n\�ͳ�C(�e2\�/�\�_���>a�_\�\�ek��\�t6<Kn�a\���Ǖ��i\�~�)w~�\�\�d��\�q\�\�\�_�+u�՗7{_�\�H 9�i$��(��\r�D\�\�.	8���S�Fr�\����9?~ݨQ\��c�%_\���\���,\�\��^��\�W�ƅ\�{���\�\��i�k��~c�_\�\�,�͂3��\�^q�kN\�|\�+\�\'r?��ؙV\��r�i�=s\"�\�\���\�+Dꩧ\�q޿쪨x\�y\�\�p\�C\�\�(x?\��\�\'\�1��x���Y��`\����ۮ�DL�6^/e��oߟTj\�z!w\�H���k��^\�\�z\��z\ZC\�f��^IZ�\�q��8]_���\�Z�\�y�\�hl,�>�}A�����a?��\\�\�\��\�Ȋ�l-,.^e��,\�\�c?�3�e�ww�;�\�\�\�\�J\�\� �`DM�rs_6W\��\�۪Usu�;cƯ͕e��`i\�l\�d��l�iu7\���2\�%��e�r��a��?�*/_\�l�WU�w�}YI��\�\��D��ڽ`OX\�u�55\�\n\�2��+��/9\�\�G��\�\���\�,G\�<Ʒl\�\�샧]lߊ.5�6p̻CV.\�Ns\��s���us!Wj\�~��\�L\�[\�\�\�\�u;�\'����\�FkW���\�nd��E\��\�n֧�I��\�^Ӯ^=\��\���1xQ߿}{��\�\�14��9�W\��-�++mY�1Z�](j�KsTW�M�{���\rI\���QU�i6�;���\�\�\�y�\�\�\�FX\�5]m\�&�_���7\����\�\�z�\�x�\�\�\�<>�L�E\�n˖ea�;r\��rD�~D�\�9j�|���\�輟��+7��n�2\0\�\�]!��z�o#\�x\�p�)x\�j&޴v�K\�\�o\"�\�\�\�\�x\�9=u\�m\������\�\"}Z\�}D\�\�\�._��\�}o޼�����\"\��<\�\�\�\�\��rrC��D\�\n�\�J\�����F�?�\�{���\�jD\�\�\�\�m�}��n�\�@�p\�\�؋ԤIc�8�1{\���\�&�\�o[߁]\�wCN�J�\�/�\�_���\���s�2\�\�\�#t�~�\�6w\�Q��#��c��\n�l�;\�tK���\�`-\�`.\rY56y4�\�ֵuցd^q�𼼗�nw�\�.UG��<s\�)\'�\rɖf�a\�#�ƚ+��-m\��i�]\'8\�\�\��I�\\;�Ͼ\�455��ϖ\�\�\�\�\�!Z\�\�\'\�Vp��\�tƖ��8�kX\�\�ȑw�,\��mۖY\�\�\�\�\�\�\�4\�,�\�^-jv��V\�V+W>�\�\�\�\�\n\n��\r��A�LUWg6�y��o\��=�K\�\�Q�\�\��9b���\�\�vy\��-[�ۻ{�\�\�s\�6��]�`nhp�\\��j��\�\n�{�[�nrr^����\�\��q\�f$#\�9\'\�l\n���\�ima8a\�ϝ\�\'GT���x\�:�\��`%��W�\"*Gv6\�\�穦�}�\�`ذoq�H\�\�{YVVR�i\��\�z^��h;;�;C\�Ν\��1,��uC�&\�\�\�4��2w\��\�\����#r\�&�|�n9-R\�\�\�\�\�t\��܇\�#�V@�4ܲUK\�{n\�\�\�m���\�M��\��\�\���\�\�\�o\Zy�\�\���Eo}�\�\"�-\���co	\�\�nw��\�^�娴�5�\�j{\�\�\�Y�\�r>�ji�ػ��w�^h횝\�wz��JK��#�\�$2�\�6)\�A\�\0kl\�8\�\�ܑ�\�#��#rD�\�QP\�[c]�4\�YVC.[�\�\�\�e��A\�m\�0ܻ�{ޮκ\r�\�`��vt\Z\�A���E \�H69\n��N�#G\�\"G\�\"Gmcx��=�\�\�;\�\0f\�!\�nx��\�9\"G\��#rD��h\�\�mV\�\�\n�ўdp4r�3\�]\�b�wA\ZG�(rD�\�9\"G\�u�f=`\�Z�>1���\�阮{w�{\�8\0\�,��P���\�\���E\�\�\r9\"G\��#rD��h\�\0\�,�#h\�B�\�G�\�9\"G\��#��\0f\�a���+7\��#rD�\�9�h��`f�ܥ+9IQ�rC�\�9\"G\��#��\0f\�]&��\�\�E�\�9\"G\��#\04\�\�\�ՇQ\��#rD�\�9@\�M�`9\"G G\�\�\"G\0X0�`9�\�9�\�\�9���b�L�(rrD�@�\�\0\�f�#rrD�@�(r�3f�#rD�\�E�\�E�\0�`�X0�#���#�#r�3ł\���#�#�`�̂\��Q\�Q\�\0f�39�\��\�\��.\'�|\�w\r\r�,à��j�>s���\�\"G\�\"G G\�@<�Ǉ��`�Z����\�Y��QI�(rD�(rrD�\0D����lݜ9SY0�A�{U�9K�\�\"G\�\"G G\�@0\����˵��c\�\�\'=z��0gI��Q\�1�\�\�9%���aiR҃,��ƌ�j�9+r�\�\"G\��#�#r �:�\�\�ꋊV��\�\�\�_�ޜͺ��H�(rD�\�99\"G\0�O�9\��wΡ_(�\�ѣ\�|�\�0\�E�@�\�\�9\�\�N���y�\���\����\��X�d�L�(rrD�@�\��\�aPϞ\�\�9��SO�r\�\�M�^<\�\�9v\�\�1\�OD\�Q+�i\�w{\�݈Q\�\���#\0\�̥f\�1k�Y\rf)�\�\�2ܿ\�(?�Q+\�E�@�\�\�9\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\���9��\�6BX\0\0\0\0IEND�B`�',0),('8f4fc708be264174837f42514849bdd0',1,'test_audit.bpmn20.xml','944e927217294f4a9c4d43ede6636fe0','<?xml version=\'1.0\' encoding=\'UTF-8\'?>\r\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\r\n  <process id=\"test_audit\" name=\"流程审批测试流程\" isExecutable=\"true\">\r\n    <startEvent id=\"start\" name=\"启动审批\" activiti:initiator=\"apply\" activiti:formKey=\"/oa/testAudit/form\"/>\r\n    <endEvent id=\"end\" name=\"结束审批\"/>\r\n    <userTask id=\"modify\" name=\"员工薪酬档级修改\" activiti:assignee=\"${apply}\"/>\r\n    <userTask id=\"audit\" name=\"薪酬主管初审\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <userTask id=\"audit2\" name=\"集团人力资源部部长审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <sequenceFlow id=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" sourceRef=\"audit2\" targetRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\"/>\r\n    <userTask id=\"audit3\" name=\"集团人力资源部分管领导审核\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <sequenceFlow id=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" sourceRef=\"audit3\" targetRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\"/>\r\n    <userTask id=\"audit4\" name=\"集团总经理审批\" activiti:assignee=\"thinkgem\"/>\r\n    <exclusiveGateway id=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <userTask id=\"apply_end\" name=\"薪酬档级兑现\" activiti:assignee=\"thinkgem\"/>\r\n    <sequenceFlow id=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" sourceRef=\"audit4\" targetRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\"/>\r\n    <sequenceFlow id=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" sourceRef=\"audit\" targetRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\"/>\r\n    <sequenceFlow id=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" sourceRef=\"start\" targetRef=\"audit\"/>\r\n    <sequenceFlow id=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" name=\"是\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"apply_end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" name=\"是\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"audit4\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" name=\"否\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <exclusiveGateway id=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" sourceRef=\"modify\" targetRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\"/>\r\n    <sequenceFlow id=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" name=\"是\" sourceRef=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" targetRef=\"audit2\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" name=\"重新申请\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"audit\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" name=\"是\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"audit3\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==1}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" name=\"否\" sourceRef=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" name=\"否\" sourceRef=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" name=\"否\" sourceRef=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" targetRef=\"modify\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n    <sequenceFlow id=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" sourceRef=\"apply_end\" targetRef=\"end\"/>\r\n    <sequenceFlow id=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" name=\"销毁\" sourceRef=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" targetRef=\"end\">\r\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${pass==0}]]></conditionExpression>\r\n    </sequenceFlow>\r\n  </process>\r\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_test_audit\">\r\n    <bpmndi:BPMNPlane bpmnElement=\"test_audit\" id=\"BPMNPlane_test_audit\">\r\n      <bpmndi:BPMNShape bpmnElement=\"start\" id=\"BPMNShape_start\">\r\n        <omgdc:Bounds height=\"30.0\" width=\"30.0\" x=\"30.0\" y=\"245.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"end\" id=\"BPMNShape_end\">\r\n        <omgdc:Bounds height=\"28.0\" width=\"28.0\" x=\"975.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"modify\" id=\"BPMNShape_modify\">\r\n        <omgdc:Bounds height=\"58.0\" width=\"102.0\" x=\"209.0\" y=\"135.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit\" id=\"BPMNShape_audit\">\r\n        <omgdc:Bounds height=\"57.0\" width=\"96.0\" x=\"105.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-C28BB5F6-013D-4570-B432-61B380C1F46F\" id=\"BPMNShape_sid-C28BB5F6-013D-4570-B432-61B380C1F46F\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"240.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit2\" id=\"BPMNShape_audit2\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"210.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\" id=\"BPMNShape_sid-ED46FE41-A0FD-496D-86DC-2C97AF5735F0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"345.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit3\" id=\"BPMNShape_audit3\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"420.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\" id=\"BPMNShape_sid-FE485B2D-9A23-4236-BD0D-D788CA6E30E4\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"555.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"audit4\" id=\"BPMNShape_audit4\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"630.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\" id=\"BPMNShape_sid-3F53B6BD-F8F3-496B-AC08-50630BD11477\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"765.0\" y=\"350.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"apply_end\" id=\"BPMNShape_apply_end\">\r\n        <omgdc:Bounds height=\"80.0\" width=\"100.0\" x=\"840.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNShape bpmnElement=\"sid-5FED02D6-C388-48C6-870E-097DB2131EA0\" id=\"BPMNShape_sid-5FED02D6-C388-48C6-870E-097DB2131EA0\">\r\n        <omgdc:Bounds height=\"40.0\" width=\"40.0\" x=\"240.0\" y=\"45.0\"/>\r\n      </bpmndi:BPMNShape>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-3DBCD661-5720-4480-8156-748BE0275FEF\" id=\"BPMNEdge_sid-3DBCD661-5720-4480-8156-748BE0275FEF\">\r\n        <omgdi:waypoint x=\"520.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"555.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\" id=\"BPMNEdge_sid-44AFB9C1-4057-4C48-B1F2-1EC897A52CB7\">\r\n        <omgdi:waypoint x=\"280.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"989.0\" y=\"356.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\" id=\"BPMNEdge_sid-8448EF4A-B62E-4899-ABC2-0E2DB2AE6838\">\r\n        <omgdi:waypoint x=\"240.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"65.0\"/>\r\n        <omgdi:waypoint x=\"153.0\" y=\"231.5\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-A7589084-4623-4FEA-A774-00A70DDC1D20\" id=\"BPMNEdge_sid-A7589084-4623-4FEA-A774-00A70DDC1D20\">\r\n        <omgdi:waypoint x=\"385.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"420.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-35CC8C6C-1067-4398-991C-CCF955115965\" id=\"BPMNEdge_sid-35CC8C6C-1067-4398-991C-CCF955115965\">\r\n        <omgdi:waypoint x=\"785.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"785.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\" id=\"BPMNEdge_sid-EF2F51BB-1D99-4F0B-ACF2-B6C1300A7D2B\">\r\n        <omgdi:waypoint x=\"310.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"345.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-7D723190-1432-411D-A4A4-774225E54CD9\" id=\"BPMNEdge_sid-7D723190-1432-411D-A4A4-774225E54CD9\">\r\n        <omgdi:waypoint x=\"805.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"840.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\" id=\"BPMNEdge_sid-2AB7C01A-50EE-4AAC-8C8F-F6E1935B3DA7\">\r\n        <omgdi:waypoint x=\"201.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"240.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-D44CAD43-0271-4920-A524-9B8533E52550\" id=\"BPMNEdge_sid-D44CAD43-0271-4920-A524-9B8533E52550\">\r\n        <omgdi:waypoint x=\"595.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"630.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-FA618636-3708-4D0C-8514-29A4BB8BC926\" id=\"BPMNEdge_sid-FA618636-3708-4D0C-8514-29A4BB8BC926\">\r\n        <omgdi:waypoint x=\"365.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"365.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\" id=\"BPMNEdge_sid-02DB2AD9-1332-4198-AC8D-22A35169D15C\">\r\n        <omgdi:waypoint x=\"730.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"765.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\" id=\"BPMNEdge_sid-36E50C8B-6C7C-4968-B02D-EBAA425BF4BE\">\r\n        <omgdi:waypoint x=\"60.0\" y=\"260.0\"/>\r\n        <omgdi:waypoint x=\"105.0\" y=\"260.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\" id=\"BPMNEdge_sid-53258502-43EE-4DE8-B1A4-DBD11922B8AF\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"240.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"193.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-163DBC60-DBC9-438B-971A-67738FB7715A\" id=\"BPMNEdge_sid-163DBC60-DBC9-438B-971A-67738FB7715A\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"135.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"85.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\" id=\"BPMNEdge_sid-BDB0AAB2-7E50-4D35-80EE-CE0BECDD9F57\">\r\n        <omgdi:waypoint x=\"940.0\" y=\"370.0\"/>\r\n        <omgdi:waypoint x=\"975.0\" y=\"370.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\" id=\"BPMNEdge_sid-1525BFF4-3E9D-4D8A-BF80-1F63AFE16289\">\r\n        <omgdi:waypoint x=\"575.0\" y=\"350.0\"/>\r\n        <omgdi:waypoint x=\"575.0\" y=\"164.0\"/>\r\n        <omgdi:waypoint x=\"311.0\" y=\"164.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n      <bpmndi:BPMNEdge bpmnElement=\"sid-72258A41-203E-428C-B71D-CA3506252D73\" id=\"BPMNEdge_sid-72258A41-203E-428C-B71D-CA3506252D73\">\r\n        <omgdi:waypoint x=\"260.0\" y=\"280.0\"/>\r\n        <omgdi:waypoint x=\"260.0\" y=\"330.0\"/>\r\n      </bpmndi:BPMNEdge>\r\n    </bpmndi:BPMNPlane>\r\n  </bpmndi:BPMNDiagram>\r\n</definitions>',0);
/*!40000 ALTER TABLE `act_ge_bytearray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ge_property`
--

DROP TABLE IF EXISTS `act_ge_property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL,
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ge_property`
--

LOCK TABLES `act_ge_property` WRITE;
/*!40000 ALTER TABLE `act_ge_property` DISABLE KEYS */;
INSERT INTO `act_ge_property` VALUES ('next.dbid','1',1),('schema.history','create(5.15.1)',1),('schema.version','5.15.1',1);
/*!40000 ALTER TABLE `act_ge_property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_actinst`
--

DROP TABLE IF EXISTS `act_hi_actinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_actinst`
--

LOCK TABLES `act_hi_actinst` WRITE;
/*!40000 ALTER TABLE `act_hi_actinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_actinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_attachment`
--

DROP TABLE IF EXISTS `act_hi_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_attachment`
--

LOCK TABLES `act_hi_attachment` WRITE;
/*!40000 ALTER TABLE `act_hi_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_comment`
--

DROP TABLE IF EXISTS `act_hi_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_comment`
--

LOCK TABLES `act_hi_comment` WRITE;
/*!40000 ALTER TABLE `act_hi_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_detail`
--

DROP TABLE IF EXISTS `act_hi_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_detail`
--

LOCK TABLES `act_hi_detail` WRITE;
/*!40000 ALTER TABLE `act_hi_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_identitylink`
--

DROP TABLE IF EXISTS `act_hi_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_identitylink`
--

LOCK TABLES `act_hi_identitylink` WRITE;
/*!40000 ALTER TABLE `act_hi_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_procinst`
--

DROP TABLE IF EXISTS `act_hi_procinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_procinst`
--

LOCK TABLES `act_hi_procinst` WRITE;
/*!40000 ALTER TABLE `act_hi_procinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_procinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_taskinst`
--

DROP TABLE IF EXISTS `act_hi_taskinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_taskinst`
--

LOCK TABLES `act_hi_taskinst` WRITE;
/*!40000 ALTER TABLE `act_hi_taskinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_taskinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_hi_varinst`
--

DROP TABLE IF EXISTS `act_hi_varinst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` datetime DEFAULT NULL,
  `LAST_UPDATED_TIME_` datetime DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_hi_varinst`
--

LOCK TABLES `act_hi_varinst` WRITE;
/*!40000 ALTER TABLE `act_hi_varinst` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_hi_varinst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_group`
--

DROP TABLE IF EXISTS `act_id_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_group`
--

LOCK TABLES `act_id_group` WRITE;
/*!40000 ALTER TABLE `act_id_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_info`
--

DROP TABLE IF EXISTS `act_id_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_info`
--

LOCK TABLES `act_id_info` WRITE;
/*!40000 ALTER TABLE `act_id_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_membership`
--

DROP TABLE IF EXISTS `act_id_membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_membership`
--

LOCK TABLES `act_id_membership` WRITE;
/*!40000 ALTER TABLE `act_id_membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_id_user`
--

DROP TABLE IF EXISTS `act_id_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_id_user`
--

LOCK TABLES `act_id_user` WRITE;
/*!40000 ALTER TABLE `act_id_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_id_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_deployment`
--

DROP TABLE IF EXISTS `act_re_deployment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_deployment`
--

LOCK TABLES `act_re_deployment` WRITE;
/*!40000 ALTER TABLE `act_re_deployment` DISABLE KEYS */;
INSERT INTO `act_re_deployment` VALUES ('944e927217294f4a9c4d43ede6636fe0','SpringAutoDeployment',NULL,'','2015-10-28 11:32:09');
/*!40000 ALTER TABLE `act_re_deployment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_model`
--

DROP TABLE IF EXISTS `act_re_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_model`
--

LOCK TABLES `act_re_model` WRITE;
/*!40000 ALTER TABLE `act_re_model` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_re_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_re_procdef`
--

DROP TABLE IF EXISTS `act_re_procdef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`,`TENANT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_re_procdef`
--

LOCK TABLES `act_re_procdef` WRITE;
/*!40000 ALTER TABLE `act_re_procdef` DISABLE KEYS */;
INSERT INTO `act_re_procdef` VALUES ('test_audit:1:4b2360c942ed4d6eb70b0bb9c43a19be',1,'http://www.activiti.org/test','流程审批测试流程','test_audit',1,'944e927217294f4a9c4d43ede6636fe0','test_audit.bpmn20.xml','test_audit.png',NULL,1,1,'');
/*!40000 ALTER TABLE `act_re_procdef` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_event_subscr`
--

DROP TABLE IF EXISTS `act_ru_event_subscr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_event_subscr`
--

LOCK TABLES `act_ru_event_subscr` WRITE;
/*!40000 ALTER TABLE `act_ru_event_subscr` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_event_subscr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_execution`
--

DROP TABLE IF EXISTS `act_ru_execution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  KEY `ACT_FK_EXE_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_execution`
--

LOCK TABLES `act_ru_execution` WRITE;
/*!40000 ALTER TABLE `act_ru_execution` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_execution` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_identitylink`
--

DROP TABLE IF EXISTS `act_ru_identitylink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_identitylink`
--

LOCK TABLES `act_ru_identitylink` WRITE;
/*!40000 ALTER TABLE `act_ru_identitylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_identitylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_job`
--

DROP TABLE IF EXISTS `act_ru_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_job`
--

LOCK TABLES `act_ru_job` WRITE;
/*!40000 ALTER TABLE `act_ru_job` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_task`
--

DROP TABLE IF EXISTS `act_ru_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `TENANT_ID_` varchar(255) COLLATE utf8_bin DEFAULT '',
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_task`
--

LOCK TABLES `act_ru_task` WRITE;
/*!40000 ALTER TABLE `act_ru_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `act_ru_variable`
--

DROP TABLE IF EXISTS `act_ru_variable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `act_ru_variable`
--

LOCK TABLES `act_ru_variable` WRITE;
/*!40000 ALTER TABLE `act_ru_variable` DISABLE KEYS */;
/*!40000 ALTER TABLE `act_ru_variable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `circuitinfo`
--

DROP TABLE IF EXISTS `circuitinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circuitinfo` (
  `circuitId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `circuitUrl` varchar(200) DEFAULT NULL COMMENT '电支路URL',
  `circuitName` varchar(200) DEFAULT NULL COMMENT '电支路名称',
  `location` varchar(200) DEFAULT NULL COMMENT '所在位置',
  `switchRatedC` int(11) DEFAULT NULL COMMENT '开关额定电流，单位：A',
  `levelV` int(11) DEFAULT NULL COMMENT '电压等级，单位：V',
  `designPower` decimal(18,4) DEFAULT NULL COMMENT '设计功率，单位：kw',
  `powerPhase` int(11) DEFAULT NULL COMMENT '电源相数，1 or 3',
  `parentId` int(11) DEFAULT NULL COMMENT '上级电支路，0-动态，-1-没有，>0-静态',
  `dynamicParent1Id` int(11) DEFAULT NULL COMMENT '动态上级1',
  `dynamicParent2Id` int(11) DEFAULT NULL COMMENT '动态上级2',
  PRIMARY KEY (`circuitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='3 电支路信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `circuitinfo`
--

LOCK TABLES `circuitinfo` WRITE;
/*!40000 ALTER TABLE `circuitinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `circuitinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article`
--

DROP TABLE IF EXISTS `cms_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '标题',
  `link` varchar(255) DEFAULT NULL COMMENT '文章链接',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '文章图片',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '描述、摘要',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `hits` int(11) DEFAULT '0' COMMENT '点击数',
  `posid` varchar(10) DEFAULT NULL COMMENT '推荐位，多选',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_article_create_by` (`create_by`),
  KEY `cms_article_title` (`title`),
  KEY `cms_article_keywords` (`keywords`),
  KEY `cms_article_del_flag` (`del_flag`),
  KEY `cms_article_weight` (`weight`),
  KEY `cms_article_update_date` (`update_date`),
  KEY `cms_article_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article`
--

LOCK TABLES `cms_article` WRITE;
/*!40000 ALTER TABLE `cms_article` DISABLE KEYS */;
INSERT INTO `cms_article` VALUES ('1','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,3,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','5','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','7','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','3','文章标题标题标题标题',NULL,'red',NULL,'关键字1,关键字2',NULL,0,NULL,1,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','8','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','9','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','11','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','12','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','文章标题标题标题标题',NULL,'green',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','13','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','14','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('47','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','15','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','16','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','17','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','26','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','4','文章标题标题标题标题',NULL,'blue',NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','4','文章标题标题标题标题',NULL,NULL,NULL,'关键字1,关键字2',NULL,0,NULL,0,NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_article_data`
--

DROP TABLE IF EXISTS `cms_article_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_article_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `content` text COMMENT '文章内容',
  `copyfrom` varchar(255) DEFAULT NULL COMMENT '文章来源',
  `relation` varchar(255) DEFAULT NULL COMMENT '相关文章',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章详表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_article_data`
--

LOCK TABLES `cms_article_data` WRITE;
/*!40000 ALTER TABLE `cms_article_data` DISABLE KEYS */;
INSERT INTO `cms_article_data` VALUES ('1','文章内容内容内容内容','来源','1,2,3','1'),('10','文章内容内容内容内容','来源','1,2,3','1'),('11','文章内容内容内容内容','来源','1,2,3','1'),('12','文章内容内容内容内容','来源','1,2,3','1'),('13','文章内容内容内容内容','来源','1,2,3','1'),('14','文章内容内容内容内容','来源','1,2,3','1'),('15','文章内容内容内容内容','来源','1,2,3','1'),('16','文章内容内容内容内容','来源','1,2,3','1'),('17','文章内容内容内容内容','来源','1,2,3','1'),('18','文章内容内容内容内容','来源','1,2,3','1'),('19','文章内容内容内容内容','来源','1,2,3','1'),('2','文章内容内容内容内容','来源','1,2,3','1'),('20','文章内容内容内容内容','来源','1,2,3','1'),('21','文章内容内容内容内容','来源','1,2,3','1'),('22','文章内容内容内容内容','来源','1,2,3','1'),('23','文章内容内容内容内容','来源','1,2,3','1'),('24','文章内容内容内容内容','来源','1,2,3','1'),('25','文章内容内容内容内容','来源','1,2,3','1'),('26','文章内容内容内容内容','来源','1,2,3','1'),('27','文章内容内容内容内容','来源','1,2,3','1'),('28','文章内容内容内容内容','来源','1,2,3','1'),('29','文章内容内容内容内容','来源','1,2,3','1'),('3','文章内容内容内容内容','来源','1,2,3','1'),('30','文章内容内容内容内容','来源','1,2,3','1'),('31','文章内容内容内容内容','来源','1,2,3','1'),('32','文章内容内容内容内容','来源','1,2,3','1'),('33','文章内容内容内容内容','来源','1,2,3','1'),('34','文章内容内容内容内容','来源','1,2,3','1'),('35','文章内容内容内容内容','来源','1,2,3','1'),('36','文章内容内容内容内容','来源','1,2,3','1'),('37','文章内容内容内容内容','来源','1,2,3','1'),('38','文章内容内容内容内容','来源','1,2,3','1'),('39','文章内容内容内容内容','来源','1,2,3','1'),('4','文章内容内容内容内容','来源','1,2,3','1'),('40','文章内容内容内容内容','来源','1,2,3','1'),('41','文章内容内容内容内容','来源','1,2,3','1'),('42','文章内容内容内容内容','来源','1,2,3','1'),('43','文章内容内容内容内容','来源','1,2,3','1'),('44','文章内容内容内容内容','来源','1,2,3','1'),('45','文章内容内容内容内容','来源','1,2,3','1'),('46','文章内容内容内容内容','来源','1,2,3','1'),('47','文章内容内容内容内容','来源','1,2,3','1'),('48','文章内容内容内容内容','来源','1,2,3','1'),('49','文章内容内容内容内容','来源','1,2,3','1'),('5','文章内容内容内容内容','来源','1,2,3','1'),('50','文章内容内容内容内容','来源','1,2,3','1'),('51','文章内容内容内容内容','来源','1,2,3','1'),('52','文章内容内容内容内容','来源','1,2,3','1'),('53','文章内容内容内容内容','来源','1,2,3','1'),('6','文章内容内容内容内容','来源','1,2,3','1'),('7','文章内容内容内容内容','来源','1,2,3','1'),('8','文章内容内容内容内容','来源','1,2,3','1'),('9','文章内容内容内容内容','来源','1,2,3','1');
/*!40000 ALTER TABLE `cms_article_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_category`
--

DROP TABLE IF EXISTS `cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_category` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `site_id` varchar(64) DEFAULT '1' COMMENT '站点编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `module` varchar(20) DEFAULT NULL COMMENT '栏目模块',
  `name` varchar(100) NOT NULL COMMENT '栏目名称',
  `image` varchar(255) DEFAULT NULL COMMENT '栏目图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `sort` int(11) DEFAULT '30' COMMENT '排序（升序）',
  `in_menu` char(1) DEFAULT '1' COMMENT '是否在导航中显示',
  `in_list` char(1) DEFAULT '1' COMMENT '是否在分类页中显示列表',
  `show_modes` char(1) DEFAULT '0' COMMENT '展现方式',
  `allow_comment` char(1) DEFAULT NULL COMMENT '是否允许评论',
  `is_audit` char(1) DEFAULT NULL COMMENT '是否需要审核',
  `custom_list_view` varchar(255) DEFAULT NULL COMMENT '自定义列表视图',
  `custom_content_view` varchar(255) DEFAULT NULL COMMENT '自定义内容视图',
  `view_config` text COMMENT '视图配置',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_category_parent_id` (`parent_id`),
  KEY `cms_category_module` (`module`),
  KEY `cms_category_name` (`name`),
  KEY `cms_category_sort` (`sort`),
  KEY `cms_category_del_flag` (`del_flag`),
  KEY `cms_category_office_id` (`office_id`),
  KEY `cms_category_site_id` (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='栏目表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_category`
--

LOCK TABLES `cms_category` WRITE;
/*!40000 ALTER TABLE `cms_category` DISABLE KEYS */;
INSERT INTO `cms_category` VALUES ('1','0','0,','0','1',NULL,'顶级栏目',NULL,NULL,NULL,NULL,NULL,0,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','1','0,1,','1','4','article','软件介绍',NULL,NULL,NULL,NULL,NULL,20,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,10,','1','4','article','网络工具',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,10,','1','4','article','浏览工具',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','10','0,1,10,','1','4','article','浏览辅助',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','10','0,1,10,','1','4','article','网络优化',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','10','0,1,10,','1','4','article','邮件处理',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','10','0,1,10,','1','4','article','下载工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','10','0,1,10,','1','4','article','搜索工具',NULL,NULL,NULL,NULL,NULL,50,'1','1','2','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','1','0,1,','1','5','link','友情链接',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','18','0,1,18,','1','5','link','常用网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','1','3','article','组织机构','','','','','',10,'1','1','0','0','1','frontListCategory','frontViewArticle','','1','2013-05-27 08:00:00','1','2015-10-29 10:43:24',NULL,'0'),('20','18','0,1,18,','1','5','link','门户网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','18','0,1,18,','1','5','link','购物网站',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','18','0,1,18,','1','5','link','交友社区',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','18','0,1,18,','1','5','link','音乐视频',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','1','0,1,','1','6',NULL,'百度一下',NULL,'http://www.baidu.com','_blank',NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','0,1,','1','6',NULL,'全文检索',NULL,'/search',NULL,NULL,NULL,90,'0','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','1','0,1,','2','6','article','测试栏目',NULL,NULL,NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','1','0,1,','1','6',NULL,'公共留言',NULL,'/guestbook',NULL,NULL,NULL,90,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','1','3','article','网站简介','','','','','',30,'1','1','0','0','1','frontList','','','1','2013-05-27 08:00:00','1','2015-10-29 10:36:14',NULL,'0'),('4','2','0,1,2,','1','3','article','内部机构',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','2','0,1,2,','1','3','article','地方机构',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','0','1',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','1','0,1,','1','3','article','质量检验',NULL,NULL,NULL,NULL,NULL,20,'1','1','1','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','6','0,1,6,','1','3','article','产品质量',NULL,NULL,NULL,NULL,NULL,30,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','6','0,1,6,','1','3','article','技术质量',NULL,NULL,NULL,NULL,NULL,40,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','6','0,1,6,','1','3','article','工程质量',NULL,NULL,NULL,NULL,NULL,50,'1','1','0','1','0',NULL,NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_comment`
--

DROP TABLE IF EXISTS `cms_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_comment` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `content_id` varchar(64) NOT NULL COMMENT '栏目内容的编号',
  `title` varchar(255) DEFAULT NULL COMMENT '栏目内容的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `name` varchar(100) DEFAULT NULL COMMENT '评论姓名',
  `ip` varchar(100) DEFAULT NULL COMMENT '评论IP',
  `create_date` datetime NOT NULL COMMENT '评论时间',
  `audit_user_id` varchar(64) DEFAULT NULL COMMENT '审核人',
  `audit_date` datetime DEFAULT NULL COMMENT '审核时间',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_comment_category_id` (`category_id`),
  KEY `cms_comment_content_id` (`content_id`),
  KEY `cms_comment_status` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_comment`
--

LOCK TABLES `cms_comment` WRITE;
/*!40000 ALTER TABLE `cms_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_guestbook`
--

DROP TABLE IF EXISTS `cms_guestbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_guestbook` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) NOT NULL COMMENT '留言分类',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(100) NOT NULL COMMENT '邮箱',
  `phone` varchar(100) NOT NULL COMMENT '电话',
  `workunit` varchar(100) NOT NULL COMMENT '单位',
  `ip` varchar(100) NOT NULL COMMENT 'IP',
  `create_date` datetime NOT NULL COMMENT '留言时间',
  `re_user_id` varchar(64) DEFAULT NULL COMMENT '回复人',
  `re_date` datetime DEFAULT NULL COMMENT '回复时间',
  `re_content` varchar(100) DEFAULT NULL COMMENT '回复内容',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_guestbook_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='留言板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_guestbook`
--

LOCK TABLES `cms_guestbook` WRITE;
/*!40000 ALTER TABLE `cms_guestbook` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_link`
--

DROP TABLE IF EXISTS `cms_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_link` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `category_id` varchar(64) NOT NULL COMMENT '栏目编号',
  `title` varchar(255) NOT NULL COMMENT '链接名称',
  `color` varchar(50) DEFAULT NULL COMMENT '标题颜色',
  `image` varchar(255) DEFAULT NULL COMMENT '链接图片',
  `href` varchar(255) DEFAULT NULL COMMENT '链接地址',
  `weight` int(11) DEFAULT '0' COMMENT '权重，越大越靠前',
  `weight_date` datetime DEFAULT NULL COMMENT '权重期限',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_link_category_id` (`category_id`),
  KEY `cms_link_title` (`title`),
  KEY `cms_link_del_flag` (`del_flag`),
  KEY `cms_link_weight` (`weight`),
  KEY `cms_link_create_by` (`create_by`),
  KEY `cms_link_update_date` (`update_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='友情链接';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_link`
--

LOCK TABLES `cms_link` WRITE;
/*!40000 ALTER TABLE `cms_link` DISABLE KEYS */;
INSERT INTO `cms_link` VALUES ('1','19','JeeSite',NULL,NULL,'http://thinkgem.github.com/jeesite',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','22','58同城',NULL,NULL,'http://www.58.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','23','视频大全',NULL,NULL,'http://v.360.cn/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','23','凤凰网',NULL,NULL,'http://www.ifeng.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','19','ThinkGem',NULL,NULL,'http://thinkgem.iteye.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','19','百度一下',NULL,NULL,'http://www.baidu.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','19','谷歌搜索',NULL,NULL,'http://www.google.com',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','20','新浪网',NULL,NULL,'http://www.sina.com.cn',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','20','腾讯网',NULL,NULL,'http://www.qq.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','21','淘宝网',NULL,NULL,'http://www.taobao.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','21','新华网',NULL,NULL,'http://www.xinhuanet.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','22','赶集网',NULL,NULL,'http://www.ganji.com/',0,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `cms_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_site`
--

DROP TABLE IF EXISTS `cms_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_site` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(100) NOT NULL COMMENT '站点名称',
  `title` varchar(100) NOT NULL COMMENT '站点标题',
  `logo` varchar(255) DEFAULT NULL COMMENT '站点Logo',
  `domain` varchar(255) DEFAULT NULL COMMENT '站点域名',
  `description` varchar(255) DEFAULT NULL COMMENT '描述',
  `keywords` varchar(255) DEFAULT NULL COMMENT '关键字',
  `theme` varchar(255) DEFAULT 'default' COMMENT '主题',
  `copyright` text COMMENT '版权信息',
  `custom_index_view` varchar(255) DEFAULT NULL COMMENT '自定义站点首页视图',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `cms_site_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_site`
--

LOCK TABLES `cms_site` WRITE;
/*!40000 ALTER TABLE `cms_site` DISABLE KEYS */;
INSERT INTO `cms_site` VALUES ('1','默认站点','Eospd','',NULL,'Eospd','Eospd','basic','<p>\r\n	Copyright &copy; 2015 eospd - Powered By <a href=\"https://github.com/thinkgem/jeesite\" target=\"_blank\">Eospd</a> V1.0</p>','','1','2013-05-27 08:00:00','1','2015-10-29 10:34:23',NULL,'0'),('2','子站点测试','JeeSite Subsite',NULL,NULL,'JeeSite subsite','JeeSite subsite','basic','Copyright &copy; 2012-2013 <a href=\'http://thinkgem.iteye.com\' target=\'_blank\'>ThinkGem</a> - Powered By <a href=\'https://github.com/thinkgem/jeesite\' target=\'_blank\'>JeeSite</a> V1.0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1');
/*!40000 ALTER TABLE `cms_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collectindexday`
--

DROP TABLE IF EXISTS `collectindexday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collectindexday` (
  `indexId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `indexTime` datetime DEFAULT NULL COMMENT '采集指标时间，年月日有效',
  `deviceId` int(11) DEFAULT NULL COMMENT '仪表ID，=0指系统采集指标；>0指某仪表采集指标 meter表的deviceId列',
  `dataEffRate` decimal(4,2) DEFAULT NULL COMMENT '数据有效率',
  `meterOnlineRate` decimal(4,2) DEFAULT NULL COMMENT '仪表在线率',
  `realCollectRate` decimal(4,2) DEFAULT NULL,
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`indexId`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8 COMMENT='1 数据采集指标日表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collectindexday`
--

LOCK TABLES `collectindexday` WRITE;
/*!40000 ALTER TABLE `collectindexday` DISABLE KEYS */;
INSERT INTO `collectindexday` VALUES (1,'2015-10-30 11:29:11',2,99.98,99.99,99.99,NULL,NULL,'1','2015-10-30 14:59:38','','0'),(2,'2015-10-30 10:19:00',1,0.80,0.85,0.90,'denofiend','2015-10-30 10:19:00','denofiend','2015-10-30 10:19:00','','0'),(222,'2015-10-30 11:57:11',2222,99.99,99.99,99.99,NULL,NULL,NULL,NULL,NULL,'1'),(223,'2015-10-30 15:00:05',3,99.98,99.99,99.99,'1','2015-10-30 14:59:50','1','2015-10-30 15:00:07','','0');
/*!40000 ALTER TABLE `collectindexday` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataontime`
--

DROP TABLE IF EXISTS `dataontime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataontime` (
  `doId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增编号',
  `dataLayer` int(11) NOT NULL COMMENT '数据层级，1-仪表，2-能源',
  `dcId` int(11) DEFAULT NULL COMMENT '数据采集器ID，关联数据采集器表',
  `currentTime` datetime NOT NULL COMMENT '帧当前时间',
  `receTime` datetime DEFAULT NULL COMMENT '系统接收时间',
  `timeInterval` int(11) DEFAULT NULL COMMENT '帧时间间隔，单位：秒',
  `bpSign` int(11) DEFAULT NULL COMMENT '断点标识，0-正常，1-重传',
  `dataId` int(11) NOT NULL COMMENT '能源ID或仪表ID，原始信息',
  `dataTypeId` int(11) NOT NULL COMMENT '能源或仪表类型ID，关联能源类型表或仪表类型表',
  `ivSign` int(11) DEFAULT NULL COMMENT '插值标志，0-正常；1-插值',
  `p1Pv` decimal(18,4) DEFAULT NULL COMMENT '属性1当前值',
  `p1Err` int(11) DEFAULT NULL COMMENT '属性1错误标志，0-正常',
  `p1Dv` decimal(18,4) DEFAULT NULL COMMENT '属性1插值',
  `p1Rsz` int(11) DEFAULT NULL COMMENT '属性1数据满刻度归0标志',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  `updateTime` datetime NOT NULL COMMENT '修改时间',
  `p2Pv` decimal(18,4) DEFAULT NULL,
  `p2Err` int(11) DEFAULT NULL,
  `p2Dv` decimal(18,4) DEFAULT NULL,
  `p2Rsz` int(11) DEFAULT NULL,
  PRIMARY KEY (`doId`),
  KEY `ctIndex` (`currentTime`) USING BTREE,
  KEY `dlIndex` (`dataLayer`) USING BTREE,
  KEY `didIndex` (`dataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='2 数据历史记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataontime`
--

LOCK TABLES `dataontime` WRITE;
/*!40000 ALTER TABLE `dataontime` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataontime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataontimebp`
--

DROP TABLE IF EXISTS `dataontimebp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataontimebp` (
  `dobpId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长',
  `restServerId` int(11) NOT NULL,
  `dataLayer` int(11) NOT NULL COMMENT '数据层级，1-仪表，2-能源',
  `dcId` int(11) NOT NULL COMMENT '数据采集器ID，关联数据采集器表',
  `currentTime` datetime NOT NULL COMMENT '帧当前时间',
  `dataId` int(11) NOT NULL COMMENT '能源ID或仪表ID，原始信息',
  `firstSendTime` datetime DEFAULT NULL COMMENT '首次发送时间',
  `lastSendTime` datetime DEFAULT NULL COMMENT '最后一次发送时间',
  `sendCount` int(11) DEFAULT NULL COMMENT '发送次数',
  PRIMARY KEY (`dobpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataontimebp`
--

LOCK TABLES `dataontimebp` WRITE;
/*!40000 ALTER TABLE `dataontimebp` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataontimebp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dataurl`
--

DROP TABLE IF EXISTS `dataurl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dataurl` (
  `dataId` int(11) NOT NULL AUTO_INCREMENT,
  `dataUrl` varchar(500) NOT NULL,
  PRIMARY KEY (`dataId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dataurl`
--

LOCK TABLES `dataurl` WRITE;
/*!40000 ALTER TABLE `dataurl` DISABLE KEYS */;
/*!40000 ALTER TABLE `dataurl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc`
--

DROP TABLE IF EXISTS `dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc` (
  `dcId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自动增长',
  `dcUrl` varchar(200) NOT NULL COMMENT '数据采集器Url',
  `location` varchar(200) DEFAULT NULL COMMENT '位置',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `channelCount` int(11) DEFAULT NULL COMMENT '通道数量',
  `dcIP` varchar(20) DEFAULT NULL COMMENT '数据采集器IP地址',
  `autoSign` int(11) NOT NULL COMMENT '自动添加标志，1-自动添加，0-手工添加',
  `installTime` datetime DEFAULT NULL COMMENT '安装时间',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`dcId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='4 数据采集器信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc`
--

LOCK TABLES `dc` WRITE;
/*!40000 ALTER TABLE `dc` DISABLE KEYS */;
/*!40000 ALTER TABLE `dc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devonline`
--

DROP TABLE IF EXISTS `devonline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devonline` (
  `devolId` int(11) NOT NULL AUTO_INCREMENT,
  `dcId` int(11) NOT NULL COMMENT '数据采集器ID，关联数据采集器表',
  `deviceType` int(11) NOT NULL COMMENT '设备类型。1：数据采集器；2-仪表；',
  `deviceId` int(11) NOT NULL COMMENT '设备标识，关联数据采集器表或仪表表',
  `currentTime` datetime NOT NULL COMMENT '帧当前时间',
  `deviceStatus` int(11) NOT NULL COMMENT '设备状态，0：离线；1：在线；2：重启',
  `bpSign` int(11) DEFAULT NULL COMMENT '断点标识，0-正常，1-重传',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`devolId`),
  KEY `dtIndex` (`deviceType`),
  KEY `didIndex` (`deviceId`),
  KEY `ctIndex` (`currentTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='6 设备在线状态历史记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devonline`
--

LOCK TABLES `devonline` WRITE;
/*!40000 ALTER TABLE `devonline` DISABLE KEYS */;
/*!40000 ALTER TABLE `devonline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `devonlinebp`
--

DROP TABLE IF EXISTS `devonlinebp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `devonlinebp` (
  `devolbpId` int(11) NOT NULL AUTO_INCREMENT,
  `restServerId` int(11) NOT NULL,
  `dcId` int(11) NOT NULL COMMENT '数据采集器ID，关联数据采集器表',
  `deviceType` int(11) NOT NULL COMMENT '设备类型。1：数据采集器；2-仪表；',
  `deviceId` int(11) NOT NULL COMMENT '设备标识，关联数据采集器表或仪表表',
  `currentTime` datetime NOT NULL COMMENT '帧当前时间',
  `firstSendTime` datetime DEFAULT NULL COMMENT '首次发送时间',
  `lastSendTime` datetime DEFAULT NULL COMMENT '最后一次发送时间',
  `sendCount` int(11) DEFAULT NULL COMMENT '发送次数',
  PRIMARY KEY (`devolbpId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `devonlinebp`
--

LOCK TABLES `devonlinebp` WRITE;
/*!40000 ALTER TABLE `devonlinebp` DISABLE KEYS */;
/*!40000 ALTER TABLE `devonlinebp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `energytype`
--

DROP TABLE IF EXISTS `energytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `energytype` (
  `dataTypeId` int(11) NOT NULL COMMENT '能源类型ID，=typeUrl',
  `typeUrl` varchar(10) NOT NULL COMMENT '类型Url',
  `typeName` varchar(20) NOT NULL COMMENT '名称',
  `autoSign` int(11) NOT NULL COMMENT '自动添加标志，1-自动添加，0-手工添加',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  PRIMARY KEY (`dataTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `energytype`
--

LOCK TABLES `energytype` WRITE;
/*!40000 ALTER TABLE `energytype` DISABLE KEYS */;
/*!40000 ALTER TABLE `energytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_scheme`
--

DROP TABLE IF EXISTS `gen_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_scheme` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `package_name` varchar(500) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `sub_module_name` varchar(30) DEFAULT NULL COMMENT '生成子模块名',
  `function_name` varchar(500) DEFAULT NULL COMMENT '生成功能名',
  `function_name_simple` varchar(100) DEFAULT NULL COMMENT '生成功能名（简写）',
  `function_author` varchar(100) DEFAULT NULL COMMENT '生成功能作者',
  `gen_table_id` varchar(200) DEFAULT NULL COMMENT '生成表编号',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_scheme_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='生成方案';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_scheme`
--

LOCK TABLES `gen_scheme` WRITE;
/*!40000 ALTER TABLE `gen_scheme` DISABLE KEYS */;
INSERT INTO `gen_scheme` VALUES ('35a13dc260284a728a270db3f382664b','树结构','treeTable','com.thinkgem.jeesite.modules','test',NULL,'树结构生成','树结构','ThinkGem','f6e4dafaa72f4c509636484715f33a96','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8129c223707c439b972571b2cdd00f8a','仪表信息','curd_many','com.thinkgem.jeesite.modules','eospd','meter','仪表信息','仪表信息','denofiend','0652ef508c7f4110b3331eb2ca72afbe','1','2015-10-30 15:13:31','1','2015-10-30 15:27:04','','0'),('8efdba2e2dfb431389842b5db14237ba','数据采集','curd','com.thinkgem.jeesite.modules','eospd','collect','数据采集指标','数据采集指标','denofiend','d7ef8002e9814a45a5bd02464d93a304','1','2015-10-29 14:29:07','1','2015-10-29 14:29:07','','1'),('9c9de9db6da743bb899036c6546061ac','单表','curd','com.thinkgem.jeesite.modules','test',NULL,'单表生成','单表','ThinkGem','aef6f1fc948f4c9ab1c1b780bc471cc2','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('a92006f07e4a4cef85ec01cde3783c6d','数据采集','curd','com.thinkgem.jeesite.modules','eospd','collect','数据采集指标','数据采集指标','denofiend','46f0d0129cf04aad80df07527aae2fb9','1','2015-10-30 11:46:03','1','2015-10-30 14:43:07','','0'),('b06abb4f205448dca83d80b3ba6a5a25','数据采集','curd','com.thinkgem.jeesite.modules','eospd','collect','数据采集指标','数据采集指标','denofiend','d7ef8002e9814a45a5bd02464d93a304','1','2015-10-30 11:44:00','1','2015-10-30 11:44:00','','1'),('e6d905fd236b46d1af581dd32bdfb3b0','主子表','curd_many','com.thinkgem.jeesite.modules','test',NULL,'主子表生成','主子表','ThinkGem','43d6d5acffa14c258340ce6765e46c6f','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `class_name` varchar(100) DEFAULT NULL COMMENT '实体类名称',
  `parent_table` varchar(200) DEFAULT NULL COMMENT '关联父表',
  `parent_table_fk` varchar(100) DEFAULT NULL COMMENT '关联父表外键',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_name` (`name`),
  KEY `gen_table_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
INSERT INTO `gen_table` VALUES ('0652ef508c7f4110b3331eb2ca72afbe','meter','5 仪表信息表','Meter','metertype','datatypeid','1','2015-10-30 15:12:11','1','2015-10-30 15:25:40','','0'),('43d6d5acffa14c258340ce6765e46c6f','test_data_main','业务数据表','TestDataMain',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46f0d0129cf04aad80df07527aae2fb9','collectindexday','1 数据采集指标日表','Collectindexday','','','1','2015-10-30 14:42:50','1','2015-10-30 14:42:50','','0'),('6e05c389f3c6415ea34e55e9dfb28934','test_data_child','业务数据子表','TestDataChild','test_data_main','test_data_main_id','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('aef6f1fc948f4c9ab1c1b780bc471cc2','test_data','业务数据表','TestData',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('f6e4dafaa72f4c509636484715f33a96','test_tree','树结构表','TestTree',NULL,NULL,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `gen_table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `comments` varchar(500) DEFAULT NULL COMMENT '描述',
  `jdbc_type` varchar(100) DEFAULT NULL COMMENT '列的数据类型的字节长度',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键',
  `is_null` char(1) DEFAULT NULL COMMENT '是否可为空',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段',
  `query_type` varchar(200) DEFAULT NULL COMMENT '查询方式（等于、不等于、大于、小于、范围、左LIKE、右LIKE、左右LIKE）',
  `show_type` varchar(200) DEFAULT NULL COMMENT '字段生成方案（文本框、文本域、下拉框、复选框、单选框、字典选择、人员选择、部门选择、区域选择）',
  `dict_type` varchar(200) DEFAULT NULL COMMENT '字典类型',
  `settings` varchar(2000) DEFAULT NULL COMMENT '其它设置（扩展字段JSON）',
  `sort` decimal(10,0) DEFAULT NULL COMMENT '排序（升序）',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_table_column_table_id` (`gen_table_id`),
  KEY `gen_table_column_name` (`name`),
  KEY `gen_table_column_sort` (`sort`),
  KEY `gen_table_column_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
INSERT INTO `gen_table_column` VALUES ('002fc6a2dac842349fb178b5e6eab030','0652ef508c7f4110b3331eb2ca72afbe','update_by','更新者','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','updateBy.id','0','1','1','1','0','0','=','input','',NULL,160,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('0820bd7430774428a9b747337b086032','0652ef508c7f4110b3331eb2ca72afbe','dcchannelsn','数据采集器通道编号，从1开始','int(11)','String','dcchannelsn','0','1','1','1','1','1','=','input','',NULL,80,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('0902a0cb3e8f434280c20e9d771d0658','aef6f1fc948f4c9ab1c1b780bc471cc2','sex','性别','char(1)','String','sex','0','1','1','1','1','1','=','radiobox','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('103fc05c88ff40639875c2111881996a','aef6f1fc948f4c9ab1c1b780bc471cc2','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('12fa38dd986e41908f7fefa5839d1220','6e05c389f3c6415ea34e55e9dfb28934','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('14b424ad8c4340cb8b7fd7b8646b6d7d','46f0d0129cf04aad80df07527aae2fb9','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea','',NULL,110,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('19139f32ab3f4147a13b3918a1a8f772','46f0d0129cf04aad80df07527aae2fb9','create_date','创建时间','datetime','java.util.Date','createDate','0','1','1','0','1','0','=','dateselect','',NULL,80,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('195ee9241f954d008fe01625f4adbfef','f6e4dafaa72f4c509636484715f33a96','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('19c6478b8ff54c60910c2e4fc3d27503','43d6d5acffa14c258340ce6765e46c6f','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1ac6562f753d4e599693840651ab2bf7','43d6d5acffa14c258340ce6765e46c6f','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1b8eb55f65284fa6b0a5879b6d8ad3ec','aef6f1fc948f4c9ab1c1b780bc471cc2','in_date','加入日期','date(7)','java.util.Date','inDate','0','1','1','1','0','1','between','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('1d5ca4d114be41e99f8dc42a682ba609','aef6f1fc948f4c9ab1c1b780bc471cc2','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('21756504ffdc487eb167a823f89c0c06','43d6d5acffa14c258340ce6765e46c6f','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('2376238c27fa4b5d848c756b216d7252','0652ef508c7f4110b3331eb2ca72afbe','inserttime','入库时间','datetime','java.util.Date','inserttime','0','0','1','1','1','0','=','dateselect','',NULL,110,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('24bbdc0a555e4412a106ab1c5f03008e','f6e4dafaa72f4c509636484715f33a96','parent_ids','所有父级编号','varchar2(2000)','String','parentIds','0','0','1','1','0','0','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('25d3c9f1f3bb4c9abb5f47760da1ecf4','0652ef508c7f4110b3331eb2ca72afbe','autosign','自动添加标志，1-自动添加，0-手工添加','int(11)','String','autosign','0','0','1','1','1','0','=','input','',NULL,90,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('297e8ba6b16849a2a2a455143449a003','46f0d0129cf04aad80df07527aae2fb9','deviceid','仪表ID，=0指系统采集指标；&gt;0指某仪表采集指标 meter表的deviceId列','int(11)','String','deviceid','0','1','1','1','1','1','=','input','',NULL,30,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('2d9879e643874259a21f72415cf9e0d6','0652ef508c7f4110b3331eb2ca72afbe','deviceid','仪表ID','int(11)','String','deviceid','1','0','0','0','0','0','=','input','',NULL,10,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('33152ce420904594b3eac796a27f0560','6e05c389f3c6415ea34e55e9dfb28934','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('35af241859624a01917ab64c3f4f0813','aef6f1fc948f4c9ab1c1b780bc471cc2','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('394219104878480ca5e384fdc8652969','0652ef508c7f4110b3331eb2ca72afbe','del_flag','删除标记','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,130,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('398b4a03f06940bfb979ca574e1911e3','aef6f1fc948f4c9ab1c1b780bc471cc2','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3a7cf23ae48a4c849ceb03feffc7a524','43d6d5acffa14c258340ce6765e46c6f','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','0','0','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3d9c32865bb44e85af73381df0ffbf3d','43d6d5acffa14c258340ce6765e46c6f','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('3f3ba99a18ef4976ad09db637e2a9ca3','0652ef508c7f4110b3331eb2ca72afbe','datatypeid','仪表类型ID，关联到仪表类型表','int(11)','String','datatypeid','0','1','1','1','1','1','=','input','',NULL,30,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('416c76d2019b4f76a96d8dc3a8faf84c','f6e4dafaa72f4c509636484715f33a96','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('46e6d8283270493687085d29efdecb05','f6e4dafaa72f4c509636484715f33a96','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4730c9f8c2874dbdb3a680b9a201cbc0','0652ef508c7f4110b3331eb2ca72afbe','dcid','数据采集器ID，关联到表 dc','int(11)','String','dcid','0','1','1','1','1','0','=','input','',NULL,70,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('4a0a1fff86ca46519477d66b82e01991','aef6f1fc948f4c9ab1c1b780bc471cc2','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('4ab22a75b93a4e39a24c7399fa815a8f','0652ef508c7f4110b3331eb2ca72afbe','installtime','安装时间','datetime','java.util.Date','installtime','0','1','1','1','1','0','=','dateselect','',NULL,100,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('4c8ef12cb6924b9ba44048ba9913150b','43d6d5acffa14c258340ce6765e46c6f','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('53d65a3d306d4fac9e561db9d3c66912','6e05c389f3c6415ea34e55e9dfb28934','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,9,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('56fa71c0bd7e4132931874e548dc9ba5','6e05c389f3c6415ea34e55e9dfb28934','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5a4a1933c9c844fdba99de043dc8205e','aef6f1fc948f4c9ab1c1b780bc471cc2','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('5c36d0b908a646c0b4d2f7de52c52476','46f0d0129cf04aad80df07527aae2fb9','indextime','采集指标时间，年月日有效','datetime','java.util.Date','indextime','0','1','1','1','1','1','=','dateselect','',NULL,20,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('5e5c69bd3eaa4dcc9743f361f3771c08','aef6f1fc948f4c9ab1c1b780bc471cc2','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('633f5a49ec974c099158e7b3e6bfa930','f6e4dafaa72f4c509636484715f33a96','name','名称','nvarchar2(100)','String','name','0','0','1','1','1','1','like','input',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('652491500f2641ffa7caf95a93e64d34','6e05c389f3c6415ea34e55e9dfb28934','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('6763ff6dc7cd4c668e76cf9b697d3ff6','f6e4dafaa72f4c509636484715f33a96','sort','排序','number(10)','Integer','sort','0','0','1','1','1','0','=','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('67d0331f809a48ee825602659f0778e8','43d6d5acffa14c258340ce6765e46c6f','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('68345713bef3445c906f70e68f55de38','6e05c389f3c6415ea34e55e9dfb28934','test_data_main_id','业务主表','varchar2(64)','String','testDataMain.id','0','1','1','1','0','0','=','input',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('69fa631f71a94636aea7780266fc27fa','46f0d0129cf04aad80df07527aae2fb9','create_by','创建者','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','createBy.id','0','1','1','0','1','0','=','input','',NULL,70,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('71ea4bc10d274911b405f3165fc1bb1a','aef6f1fc948f4c9ab1c1b780bc471cc2','area_id','归属区域','nvarchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Area','area.id|name','0','1','1','1','1','1','=','areaselect',NULL,NULL,4,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('79c26f2ab67d42a8a22fd840a1886953','46f0d0129cf04aad80df07527aae2fb9','realcollectrate','realcollectrate','decimal(4,2)','String','realcollectrate','0','1','1','1','1','1','=','input','',NULL,60,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('7a3b6582616c4fbb9bcd48a099fd9f97','46f0d0129cf04aad80df07527aae2fb9','meteronlinerate','仪表在线率','decimal(4,2)','String','meteronlinerate','0','1','1','1','1','1','=','input','',NULL,50,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('7aacc3a55dce4a8aa465ba3bf2025684','0652ef508c7f4110b3331eb2ca72afbe','desc','描述','varchar(200)','String','desc','0','1','1','1','1','1','=','input','',NULL,60,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('7f871058d94c4d9a89084be7c9ce806d','6e05c389f3c6415ea34e55e9dfb28934','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('827166e4591d48dbbc2d88cd7d57e277','0652ef508c7f4110b3331eb2ca72afbe','create_date','创建时间','datetime','java.util.Date','createDate','0','1','1','0','0','0','=','dateselect','',NULL,150,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('8b48774cfe184913b8b5eb17639cf12d','43d6d5acffa14c258340ce6765e46c6f','create_by','创建者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','createBy.id','0','0','1','0','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b7cf0525519474ebe1de9e587eb7067','6e05c389f3c6415ea34e55e9dfb28934','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,5,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8b9de88df53e485d8ef461c4b1824bc1','43d6d5acffa14c258340ce6765e46c6f','user_id','归属用户','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','user.id|name','0','1','1','1','1','1','=','userselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('8da38dbe5fe54e9bb1f9682c27fbf403','aef6f1fc948f4c9ab1c1b780bc471cc2','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('92481c16a0b94b0e8bba16c3c54eb1e4','f6e4dafaa72f4c509636484715f33a96','create_date','创建时间','timestamp(6)','java.util.Date','createDate','0','0','1','0','0','0','=','dateselect',NULL,NULL,7,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('962b6404f746494a8c9c7e6ce73533c6','46f0d0129cf04aad80df07527aae2fb9','update_by','更新者','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','updateBy.id','0','1','1','1','1','0','=','input','',NULL,90,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('9a012c1d2f934dbf996679adb7cc827a','f6e4dafaa72f4c509636484715f33a96','parent_id','父级编号','varchar2(64)','This','parent.id|name','0','0','1','1','0','0','=','treeselect',NULL,NULL,2,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('a3af1506a0f4469eb7e73be32faa3148','0652ef508c7f4110b3331eb2ca72afbe','deviceurl','deviceurl','varchar(200)','String','deviceurl','0','0','1','1','1','1','=','input','',NULL,20,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('ad3bf0d4b44b4528a5211a66af88f322','aef6f1fc948f4c9ab1c1b780bc471cc2','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','1','1','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('b2ea7c3f416a4878a905489c34991224','46f0d0129cf04aad80df07527aae2fb9','dataeffrate','数据有效率','decimal(4,2)','String','dataeffrate','0','1','1','1','1','1','=','input','',NULL,40,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('b6a87b305d174af7b8f2e000e8aed42f','0652ef508c7f4110b3331eb2ca72afbe','updatetime','updatetime','datetime','java.util.Date','updatetime','0','0','1','1','0','0','=','dateselect','',NULL,120,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('bb03c7f23a1b4236a8ca44259068ec50','0652ef508c7f4110b3331eb2ca72afbe','location','位置','varchar(200)','String','location','0','1','1','1','1','1','=','input','',NULL,50,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('bb1256a8d1b741f6936d8fed06f45eed','f6e4dafaa72f4c509636484715f33a96','update_by','更新者','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.User','updateBy.id','0','0','1','1','0','0','=','input',NULL,NULL,8,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('bf13b721b1a0418e840ff94d80398fdc','46f0d0129cf04aad80df07527aae2fb9','update_date','更新时间','datetime','java.util.Date','updateDate','0','1','1','1','1','0','=','dateselect','',NULL,100,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('ca68a2d403f0449cbaa1d54198c6f350','43d6d5acffa14c258340ce6765e46c6f','office_id','归属部门','varchar2(64)','com.thinkgem.jeesite.modules.modules.sys.entity.Office','office.id|name','0','1','1','1','0','0','=','officeselect',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cb9c0ec3da26432d9cbac05ede0fd1d0','43d6d5acffa14c258340ce6765e46c6f','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,12,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('cd17fecd306246a5ac5e3ede4877b365','46f0d0129cf04aad80df07527aae2fb9','indexid','自增长ID','int(11)','String','indexid','1','0','0','0','0','0','=','input','',NULL,10,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('cfcfa06ea61749c9b4c4dbc507e0e580','f6e4dafaa72f4c509636484715f33a96','id','编号','varchar2(64)','String','id','1','0','1','0','0','0','=','input',NULL,NULL,1,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d307264e31714254a8376ae142fda073','0652ef508c7f4110b3331eb2ca72afbe','create_by','创建者','varchar(64)','com.thinkgem.jeesite.modules.sys.entity.User','createBy.id','0','1','1','0','0','0','=','input','',NULL,140,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('d5c2d932ae904aa8a9f9ef34cd36fb0b','43d6d5acffa14c258340ce6765e46c6f','sex','性别','char(1)','String','sex','0','1','1','1','0','1','=','select','sex',NULL,6,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('d958ee967bbd48fa9817b6310ebf21be','0652ef508c7f4110b3331eb2ca72afbe','devicecommaddr','仪表通讯地址，一般为modbus地址（1-254有效）','varchar(255)','String','devicecommaddr','0','1','1','1','1','1','=','input','',NULL,40,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('e64050a2ebf041faa16f12dda5dcf784','6e05c389f3c6415ea34e55e9dfb28934','name','名称','nvarchar2(100)','String','name','0','1','1','1','1','1','like','input',NULL,NULL,3,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('e8d11127952d4aa288bb3901fc83127f','43d6d5acffa14c258340ce6765e46c6f','del_flag','删除标记（0：正常；1：删除）','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,13,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb2e5afd13f147a990d30e68e7f64e12','aef6f1fc948f4c9ab1c1b780bc471cc2','update_date','更新时间','timestamp(6)','java.util.Date','updateDate','0','0','1','1','1','0','=','dateselect',NULL,NULL,11,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0'),('eb33473e02834a13a98082cda8b0c851','0652ef508c7f4110b3331eb2ca72afbe','remarks','备注信息','varchar(255)','String','remarks','0','1','1','1','1','0','=','textarea','',NULL,180,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('ed54471823d14720a7d722b2ad9790b9','0652ef508c7f4110b3331eb2ca72afbe','update_date','更新时间','datetime','java.util.Date','updateDate','0','1','1','1','1','0','=','dateselect','',NULL,170,'1','2015-10-30 15:12:11','1','2015-10-30 15:25:40',NULL,'0'),('ef4477ffbaca45628d0e64135c9c8587','46f0d0129cf04aad80df07527aae2fb9','del_flag','删除标记','char(1)','String','delFlag','0','0','1','0','0','0','=','radiobox','del_flag',NULL,120,'1','2015-10-30 14:42:51','1','2015-10-30 14:42:51',NULL,'0'),('f5ed8c82bad0413fbfcccefa95931358','f6e4dafaa72f4c509636484715f33a96','remarks','备注信息','nvarchar2(255)','String','remarks','0','1','1','1','1','0','=','textarea',NULL,NULL,10,'1','2013-08-12 13:10:05','1','2013-08-12 13:10:05',NULL,'0');
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_template`
--

DROP TABLE IF EXISTS `gen_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_template` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `name` varchar(200) DEFAULT NULL COMMENT '名称',
  `category` varchar(2000) DEFAULT NULL COMMENT '分类',
  `file_path` varchar(500) DEFAULT NULL COMMENT '生成文件路径',
  `file_name` varchar(200) DEFAULT NULL COMMENT '生成文件名',
  `content` text COMMENT '内容',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记（0：正常；1：删除）',
  PRIMARY KEY (`id`),
  KEY `gen_template_del_falg` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_template`
--

LOCK TABLES `gen_template` WRITE;
/*!40000 ALTER TABLE `gen_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meter`
--

DROP TABLE IF EXISTS `meter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meter` (
  `deviceId` int(11) NOT NULL AUTO_INCREMENT COMMENT '仪表ID',
  `deviceUrl` varchar(200) NOT NULL,
  `dataTypeId` int(11) DEFAULT NULL COMMENT '仪表类型ID，关联到仪表类型表',
  `deviceCommAddr` varchar(255) DEFAULT NULL COMMENT '仪表通讯地址，一般为modbus地址（1-254有效）',
  `location` varchar(200) DEFAULT NULL COMMENT '位置',
  `desc` varchar(200) DEFAULT NULL COMMENT '描述',
  `dcId` int(11) DEFAULT NULL COMMENT '数据采集器ID，关联到表 dc',
  `dcChannelSn` int(11) DEFAULT NULL COMMENT '数据采集器通道编号，从1开始',
  `autoSign` int(11) NOT NULL COMMENT '自动添加标志，1-自动添加，0-手工添加',
  `installTime` datetime DEFAULT NULL COMMENT '安装时间',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  `updateTime` datetime NOT NULL,
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  PRIMARY KEY (`deviceId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='5 仪表信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meter`
--

LOCK TABLES `meter` WRITE;
/*!40000 ALTER TABLE `meter` DISABLE KEYS */;
INSERT INTO `meter` VALUES (1,'1',1,'1','1','1',1,1,1,'2015-10-30 15:43:59','2015-10-30 15:44:01','2015-10-30 15:44:03','0','1','2015-10-30 15:44:06','1','2015-10-30 15:44:06','');
/*!40000 ALTER TABLE `meter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metertype`
--

DROP TABLE IF EXISTS `metertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metertype` (
  `dataTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `typeUrl` varchar(200) NOT NULL COMMENT '类型Url',
  `typeName` varchar(50) NOT NULL COMMENT '类型名称',
  `desc` varchar(400) DEFAULT NULL,
  `venderId` int(11) DEFAULT '0' COMMENT '厂家ID',
  `autoSign` int(11) NOT NULL COMMENT '自动添加标志，1-自动添加，0-手工添加',
  `insertTime` datetime NOT NULL COMMENT '入库时间',
  `updateTime` datetime NOT NULL,
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`dataTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='8 仪表型号信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metertype`
--

LOCK TABLES `metertype` WRITE;
/*!40000 ALTER TABLE `metertype` DISABLE KEYS */;
/*!40000 ALTER TABLE `metertype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metervender`
--

DROP TABLE IF EXISTS `metervender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metervender` (
  `venderId` int(11) NOT NULL AUTO_INCREMENT COMMENT '厂家ID',
  `venderName` varchar(100) NOT NULL COMMENT '厂家名称',
  `venderAddr` varchar(100) DEFAULT NULL,
  `contactPhone` varchar(40) DEFAULT NULL,
  `contactPerson` varchar(10) DEFAULT NULL,
  `insertTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT NULL COMMENT '更新者',
  `update_date` datetime DEFAULT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`venderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='7 仪表厂家信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metervender`
--

LOCK TABLES `metervender` WRITE;
/*!40000 ALTER TABLE `metervender` DISABLE KEYS */;
/*!40000 ALTER TABLE `metervender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_leave`
--

DROP TABLE IF EXISTS `oa_leave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_leave` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `process_instance_id` varchar(64) DEFAULT NULL COMMENT '流程实例编号',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `leave_type` varchar(20) DEFAULT NULL COMMENT '请假类型',
  `reason` varchar(255) DEFAULT NULL COMMENT '请假理由',
  `apply_time` datetime DEFAULT NULL COMMENT '申请时间',
  `reality_start_time` datetime DEFAULT NULL COMMENT '实际开始时间',
  `reality_end_time` datetime DEFAULT NULL COMMENT '实际结束时间',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_leave_create_by` (`create_by`),
  KEY `oa_leave_process_instance_id` (`process_instance_id`),
  KEY `oa_leave_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='请假流程表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_leave`
--

LOCK TABLES `oa_leave` WRITE;
/*!40000 ALTER TABLE `oa_leave` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_leave` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify`
--

DROP TABLE IF EXISTS `oa_notify`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT NULL COMMENT '类型',
  `title` varchar(200) DEFAULT NULL COMMENT '标题',
  `content` varchar(2000) DEFAULT NULL COMMENT '内容',
  `files` varchar(2000) DEFAULT NULL COMMENT '附件',
  `status` char(1) DEFAULT NULL COMMENT '状态',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `oa_notify_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify`
--

LOCK TABLES `oa_notify` WRITE;
/*!40000 ALTER TABLE `oa_notify` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_notify_record`
--

DROP TABLE IF EXISTS `oa_notify_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_notify_record` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `oa_notify_id` varchar(64) DEFAULT NULL COMMENT '通知通告ID',
  `user_id` varchar(64) DEFAULT NULL COMMENT '接受人',
  `read_flag` char(1) DEFAULT '0' COMMENT '阅读标记',
  `read_date` date DEFAULT NULL COMMENT '阅读时间',
  PRIMARY KEY (`id`),
  KEY `oa_notify_record_notify_id` (`oa_notify_id`),
  KEY `oa_notify_record_user_id` (`user_id`),
  KEY `oa_notify_record_read_flag` (`read_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='通知通告发送记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_notify_record`
--

LOCK TABLES `oa_notify_record` WRITE;
/*!40000 ALTER TABLE `oa_notify_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_notify_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oa_test_audit`
--

DROP TABLE IF EXISTS `oa_test_audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oa_test_audit` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `PROC_INS_ID` varchar(64) DEFAULT NULL COMMENT '流程实例ID',
  `USER_ID` varchar(64) DEFAULT NULL COMMENT '变动用户',
  `OFFICE_ID` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `POST` varchar(255) DEFAULT NULL COMMENT '岗位',
  `AGE` char(1) DEFAULT NULL COMMENT '性别',
  `EDU` varchar(255) DEFAULT NULL COMMENT '学历',
  `CONTENT` varchar(255) DEFAULT NULL COMMENT '调整原因',
  `OLDA` varchar(255) DEFAULT NULL COMMENT '现行标准 薪酬档级',
  `OLDB` varchar(255) DEFAULT NULL COMMENT '现行标准 月工资额',
  `OLDC` varchar(255) DEFAULT NULL COMMENT '现行标准 年薪总额',
  `NEWA` varchar(255) DEFAULT NULL COMMENT '调整后标准 薪酬档级',
  `NEWB` varchar(255) DEFAULT NULL COMMENT '调整后标准 月工资额',
  `NEWC` varchar(255) DEFAULT NULL COMMENT '调整后标准 年薪总额',
  `ADD_NUM` varchar(255) DEFAULT NULL COMMENT '月增资',
  `EXE_DATE` varchar(255) DEFAULT NULL COMMENT '执行时间',
  `HR_TEXT` varchar(255) DEFAULT NULL COMMENT '人力资源部门意见',
  `LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '分管领导意见',
  `MAIN_LEAD_TEXT` varchar(255) DEFAULT NULL COMMENT '集团主要领导意见',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `OA_TEST_AUDIT_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='审批流程测试表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oa_test_audit`
--

LOCK TABLES `oa_test_audit` WRITE;
/*!40000 ALTER TABLE `oa_test_audit` DISABLE KEYS */;
/*!40000 ALTER TABLE `oa_test_audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restserver`
--

DROP TABLE IF EXISTS `restserver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `restserver` (
  `restServerId` int(11) NOT NULL AUTO_INCREMENT COMMENT '接收服务器ID',
  `hostUrl` varchar(100) NOT NULL,
  `insertTime` datetime NOT NULL,
  `updateTime` datetime NOT NULL,
  PRIMARY KEY (`restServerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restserver`
--

LOCK TABLES `restserver` WRITE;
/*!40000 ALTER TABLE `restserver` DISABLE KEYS */;
/*!40000 ALTER TABLE `restserver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_area`
--

DROP TABLE IF EXISTS `sys_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_area` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) DEFAULT NULL COMMENT '区域类型',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_area_parent_id` (`parent_id`),
  KEY `sys_area_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_area`
--

LOCK TABLES `sys_area` WRITE;
/*!40000 ALTER TABLE `sys_area` DISABLE KEYS */;
INSERT INTO `sys_area` VALUES ('1','0','0,','中国',10,'100000','1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','山东省',20,'110000','2','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','济南市',30,'110101','3','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','3','0,1,2,3,','历城区',40,'110102','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','3','0,1,2,3,','历下区',50,'110104','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','3','0,1,2,3,','高新区',60,'110105','4','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('d09686c9297e4535ab675c819bf12023','1','0,1,','北京',30,'100000','2','1','2015-10-29 10:31:13','1','2015-10-29 10:31:13','北京市','0');
/*!40000 ALTER TABLE `sys_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict`
--

DROP TABLE IF EXISTS `sys_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `value` varchar(100) NOT NULL COMMENT '数据值',
  `label` varchar(100) NOT NULL COMMENT '标签名',
  `type` varchar(100) NOT NULL COMMENT '类型',
  `description` varchar(100) NOT NULL COMMENT '描述',
  `sort` decimal(10,0) NOT NULL COMMENT '排序（升序）',
  `parent_id` varchar(64) DEFAULT '0' COMMENT '父级编号',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_dict_value` (`value`),
  KEY `sys_dict_label` (`label`),
  KEY `sys_dict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict`
--

LOCK TABLES `sys_dict` WRITE;
/*!40000 ALTER TABLE `sys_dict` DISABLE KEYS */;
INSERT INTO `sys_dict` VALUES ('1','0','正常','del_flag','删除标记',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','yellow','黄色','color','颜色值',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('100','java.util.Date','Date','gen_java_type','Java类型\0\0',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('101','com.thinkgem.jeesite.modules.sys.entity.User','User','gen_java_type','Java类型\0\0',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('102','com.thinkgem.jeesite.modules.sys.entity.Office','Office','gen_java_type','Java类型\0\0',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('103','com.thinkgem.jeesite.modules.sys.entity.Area','Area','gen_java_type','Java类型\0\0',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('104','Custom','Custom','gen_java_type','Java类型\0\0',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('105','1','会议通告\0\0\0\0','oa_notify_type','通知通告类型',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('106','2','奖惩通告\0\0\0\0','oa_notify_type','通知通告类型',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('107','3','活动通告\0\0\0\0','oa_notify_type','通知通告类型',30,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('108','0','草稿','oa_notify_status','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('109','1','发布','oa_notify_status','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('11','orange','橙色','color','颜色值',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('110','0','未读','oa_notify_read','通知通告状态',10,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('111','1','已读','oa_notify_read','通知通告状态',20,'0','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('12','default','默认主题','theme','主题方案',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','cerulean','天蓝主题','theme','主题方案',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','readable','橙色主题','theme','主题方案',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','united','红色主题','theme','主题方案',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','flat','Flat主题','theme','主题方案',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','1','国家','sys_area_type','区域类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','2','省份、直辖市','sys_area_type','区域类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','3','地市','sys_area_type','区域类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','删除','del_flag','删除标记',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','4','区县','sys_area_type','区域类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','1','公司','sys_office_type','机构类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('22','2','部门','sys_office_type','机构类型',70,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','3','小组','sys_office_type','机构类型',80,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','4','其它','sys_office_type','机构类型',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','1','综合部','sys_office_common','快捷通用部门',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('26','2','开发部','sys_office_common','快捷通用部门',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('27','3','人力部','sys_office_common','快捷通用部门',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('28','1','一级','sys_office_grade','机构等级',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','2','二级','sys_office_grade','机构等级',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','显示','show_hide','显示/隐藏',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','3','三级','sys_office_grade','机构等级',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','4','四级','sys_office_grade','机构等级',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','1','所有数据','sys_data_scope','数据范围',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','2','所在公司及以下数据','sys_data_scope','数据范围',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','3','所在公司数据','sys_data_scope','数据范围',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('35','4','所在部门及以下数据','sys_data_scope','数据范围',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','5','所在部门数据','sys_data_scope','数据范围',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','8','仅本人数据','sys_data_scope','数据范围',90,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','9','按明细设置','sys_data_scope','数据范围',100,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','1','系统管理','sys_user_type','用户类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','0','隐藏','show_hide','显示/隐藏',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','2','部门经理','sys_user_type','用户类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','3','普通用户','sys_user_type','用户类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','basic','基础主题','cms_theme','站点主题',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','blue','蓝色主题','cms_theme','站点主题',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('44','red','红色主题','cms_theme','站点主题',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('45','article','文章模型','cms_module','栏目模型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','picture','图片模型','cms_module','栏目模型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('47','download','下载模型','cms_module','栏目模型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('48','link','链接模型','cms_module','栏目模型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('49','special','专题模型','cms_module','栏目模型',50,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','是','yes_no','是/否',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','0','默认展现方式','cms_show_modes','展现方式',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','1','首栏目内容列表','cms_show_modes','展现方式',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','2','栏目第一条内容','cms_show_modes','展现方式',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','0','发布','cms_del_flag','内容状态',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','1','删除','cms_del_flag','内容状态',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','2','审核','cms_del_flag','内容状态',15,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','1','首页焦点图','cms_posid','推荐位',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','2','栏目页文章推荐','cms_posid','推荐位',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','1','咨询','cms_guestbook','留言板分类',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','2','建议','cms_guestbook','留言板分类',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','0','否','yes_no','是/否',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','3','投诉','cms_guestbook','留言板分类',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','4','其它','cms_guestbook','留言板分类',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','公休','oa_leave_type','请假类型',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('63','2','病假','oa_leave_type','请假类型',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','3','事假','oa_leave_type','请假类型',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','4','调休','oa_leave_type','请假类型',40,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','5','婚假','oa_leave_type','请假类型',60,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('67','1','接入日志','sys_log_type','日志类型',30,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','2','异常日志','sys_log_type','日志类型',40,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','leave','请假流程','act_type','流程类型',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('7','red','红色','color','颜色值',10,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','test_audit','审批测试流程','act_type','流程类型',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('71','1','分类1','act_category','流程分类',10,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('72','2','分类2','act_category','流程分类',20,'0','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('73','crud','增删改查','gen_category','代码生成分类',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('74','crud_many','增删改查（包含从表）','gen_category','代码生成分类',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('75','tree','树结构','gen_category','代码生成分类',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('76','=','=','gen_query_type','查询方式',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('77','!=','!=','gen_query_type','查询方式',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('78','&gt;','&gt;','gen_query_type','查询方式',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('79','&lt;','&lt;','gen_query_type','查询方式',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('8','green','绿色','color','颜色值',20,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','between','Between','gen_query_type','查询方式',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('81','like','Like','gen_query_type','查询方式',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('82','left_like','Left Like','gen_query_type','查询方式',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('83','right_like','Right Like','gen_query_type','查询方式',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('84','input','文本框','gen_show_type','字段生成方案',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('85','textarea','文本域','gen_show_type','字段生成方案',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('86','select','下拉框','gen_show_type','字段生成方案',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('87','checkbox','复选框','gen_show_type','字段生成方案',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('88','radiobox','单选框','gen_show_type','字段生成方案',50,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('89','dateselect','日期选择','gen_show_type','字段生成方案',60,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('9','blue','蓝色','color','颜色值',30,'0','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','userselect','人员选择\0','gen_show_type','字段生成方案',70,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('91','officeselect','部门选择','gen_show_type','字段生成方案',80,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('92','areaselect','区域选择','gen_show_type','字段生成方案',90,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('93','String','String','gen_java_type','Java类型',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('94','Long','Long','gen_java_type','Java类型',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('95','dao','仅持久层','gen_category','代码生成分类\0\0\0\0\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('96','1','男','sex','性别',10,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('97','2','女','sex','性别',20,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'0'),('98','Integer','Integer','gen_java_type','Java类型\0\0',30,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1'),('99','Double','Double','gen_java_type','Java类型\0\0',40,'0','1','2013-10-28 08:00:00','1','2013-10-28 08:00:00',NULL,'1');
/*!40000 ALTER TABLE `sys_dict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_log`
--

DROP TABLE IF EXISTS `sys_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_log` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `type` char(1) DEFAULT '1' COMMENT '日志类型',
  `title` varchar(255) DEFAULT '' COMMENT '日志标题',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `remote_addr` varchar(255) DEFAULT NULL COMMENT '操作IP地址',
  `user_agent` varchar(255) DEFAULT NULL COMMENT '用户代理',
  `request_uri` varchar(255) DEFAULT NULL COMMENT '请求URI',
  `method` varchar(5) DEFAULT NULL COMMENT '操作方式',
  `params` text COMMENT '操作提交的数据',
  `exception` text COMMENT '异常信息',
  PRIMARY KEY (`id`),
  KEY `sys_log_create_by` (`create_by`),
  KEY `sys_log_request_uri` (`request_uri`),
  KEY `sys_log_type` (`type`),
  KEY `sys_log_create_date` (`create_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_log`
--

LOCK TABLES `sys_log` WRITE;
/*!40000 ALTER TABLE `sys_log` DISABLE KEYS */;
INSERT INTO `sys_log` VALUES ('000333a399c244c29d708dfa6da393ba','1','内容管理-内容管理-内容发布','1','2015-10-29 18:01:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('00d80b9f3b3c4e54a69ad131c0fbf4d0','1','系统设置-机构用户-机构管理','1','2015-10-30 11:12:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_3',''),('0137ce5d9f184b29865a94829fdfa4c9','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:29:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('0138a97d862d4a22af2216d8c1b64c4c','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:23:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=9eaec5d7aff94d94aa2f77625754cd75&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=超级管理员&name=超级管理员&oldEnname=super_admin&enname=super_admin&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('021108f77a244e2c901177e997ed09dd','1','数据采集-通讯录管理-列表','1','2015-10-30 11:12:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('024d390403394b1482821fb56dce4fe9','1','系统设置-机构用户-区域管理-修改','1','2015-10-29 10:31:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/save','POST','id=&parent.id=1&parent.name=中国&name=北京&code=100000&type=2&remarks=北京市',''),('024fa306586d460c96298a6e3b2eb62e','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:08:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=denofiend&loginName=denofiend',''),('028d87b3539c4955948377a6d7a46239','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:02:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=6&office.id=2&office.name=公司领导&oldName=普通用户&name=普通用户&oldEnname=d&enname=d&roleType=user&sysData=1&useable=1&dataScope=8&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('0356e40929064f7ba4c687032a42fc2f','1','系统设置-机构用户-机构管理','1','2015-10-29 10:30:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_2',''),('035ba2fe8eea4618bc97b6b0238fde68','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 15:08:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=0,',''),('036265acfb3e432f90498b39439e92a6','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=f0ff06b9cbb442c081afc059b3777352&office.name=开发部',''),('0373dfb07f484dc7ab808841bf90e4c1','1','数据采集-数据采集-数据采集','1','2015-10-29 18:06:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('042ac0ba8e7c4515a6c2acd16eaa9bb0','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 14:57:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('0455493feea94fed89023f43159e738a','1','我的面板-个人信息-个人信息','1','2015-10-29 10:31:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('0458fb059c4a493ab87e7d449ee47d4e','1','内容管理-内容管理-内容发布','1','2015-10-29 10:35:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('056a39f2e5644d00a26c8a44167dd1e5','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:13:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('05d59ed8114d490583fda0eaa6316f5e','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:53:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=27',''),('0638e55b7bae4c0d978b7bd57e2caec7','1','内容管理-内容管理','1','2015-10-28 19:35:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('067f59a9ee0e46278d2395c94c8b688d','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:44:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('0690d59cff874b14a37c08755f7443b2','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 18:05:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('06f132b8a867496b91482eeecfd94cc1','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:57:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('0745149fd561417c85a35db6e8d210fd','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:32:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('07abe1a1003a4aeeb10e9d93fa87746d','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('07f14b23f3cd4d82a82bc7662bc19bcc','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('08351e51e66b46c790bcb5ef97d6d696','1','数据采集-数据采集-数据采集','1','2015-10-30 15:22:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_5',''),('083e46c4a3f045f392e1314747617325','1','代码生成-代码生成-业务表配置','1','2015-10-30 14:36:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_5',''),('08527683d13d4808b74f81b160bd1bdc','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:59:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('0877aabb80974382adfdd017d8dd4092','1','代码生成-生成示例-主子表-查看','1','2015-10-30 14:36:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain/','GET','',''),('08be2ca836b44215ae439fa0133bbe52','1','系统登录','1','2015-10-29 15:49:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','',''),('092fa75bed414bd2a1b4204d0fa2d0c0','1','系统设置-机构用户-区域管理-查看','1','2015-10-29 10:30:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/form','GET','parent.id=1',''),('098520d4badd4988a04d05929aee7f65','1','我的面板-个人信息-个人信息','1','2015-10-29 10:34:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('09c9caede2534f6f8c19acd7c0c52ccc','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:47:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('0a332e3e36084c50bc0b0bdbb88700e0','1','系统设置-系统设置-角色管理','1','2015-10-30 15:22:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_3',''),('0a6be1402b5d4ea88803fe41f307b299','1','系统设置-系统设置-字典管理','1','2015-10-30 15:45:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=2&pageSize=30&type=sys_area_type&description=',''),('0b09506efae24886ac425752883444df','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:17:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('0c0267bc1c384532a3ffd3f095798164','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 14:32:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('0d18920870fb48d4b544bc4286c3e144','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('0d8e5cc448924ddca6c8bac8df2e0f8d','1','系统设置-机构用户-用户管理','1','2015-10-29 10:49:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('0dceb96f9d01474db92c69fc4cedc76d','1','代码生成-代码生成-业务表配置','1','2015-10-30 14:38:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('0dd2474d374c4418a9276dea02c42929','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:34:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('0e346afeed114277a872e3223d5fcade','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:59:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('0e5c0ae6502047a88aa4709cd4d3ba9f','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 12:00:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('0e7ea7c779d6455e9b703e77ed592d3f','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:59:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('0e946270f06b489cb4c003940f2d310b','1','系统设置-系统设置-角色管理','1','2015-10-29 15:19:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_2',''),('0e94952116d34bf98021cb9e4f5a3d6a','1','在线办公-通知通告-我的通告','1','2015-10-28 19:35:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_7',''),('0f36a8587ed4439fa47f3eae218db7c4','1','系统设置-系统设置-字典管理','1','2015-10-29 11:03:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('0f8811614a3540eabf37aeff430e20c7','1','数据采集-数据采集-数据采集','1','2015-10-30 14:58:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('1002392637ad4585a17dd5bd31694400','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:48:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('106047014b9841bbac37094301c378b2','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:42:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=组织机构&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=1&customListView=frontListCategory&customContentView=frontViewArticle&viewConfig=',''),('120606aaff5440fe9f4030abdd0ae731','1','数据采集-通讯录管理-列表','1','2015-10-30 11:58:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('123f3208a15a4c48b830e2f91b7a1d6a','1','内容管理-内容管理','1','2015-10-29 10:53:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('12c0195682d34ad6849dad5171616de9','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:18:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('12f8956425f848e8af8a023a9033ee55','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:21:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_8',''),('13ef32fc8fe74b58b4b36392a30e5660','1','数据采集-通讯录管理-列表','1','2015-10-30 14:49:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('1486f48cd2604233a0e6e7d07ab52312','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:59:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('1507f1a0a7414636b03d06c8baf86982','1','数据采集-通讯录管理-列表','1','2015-10-30 15:19:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_4',''),('1545117dcee84f6f819f76dc6580168c','1','代码生成-生成示例-主子表','1','2015-10-30 15:26:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain','GET','tabPageId=jerichotabiframe_4',''),('154ecfdac46c4dd7a602f5d6dd10b7b8','1','系统登录','1','2015-10-29 10:29:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('15bc72bfd46a498bb2133fd50e191298','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:59:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('16ada77ba09a4906aa95fcef193e5dba','1','数据采集-数据采集-数据采集','1','2015-10-29 15:05:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('16cd4a52146f48c3bc15a36fcc8df31a','1','系统设置-机构用户-用户管理','1','2015-10-29 10:29:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('173c6184c79d48cab3650f970e4a4b12','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:16:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('175c03ab0e704fd0937fd0e443cf5878','1','我的面板-个人信息-个人信息','1','2015-10-29 10:48:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('1848f6a53fef4ef2a5da8d4bdb854bd7','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:11:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=3',''),('187a3085c9fb414982b0b310c05e418c','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 15:16:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=f13b7aa1f6184aefba9a601324384532&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=99&isShow=1&permission=@RequiresPermissions(\"eospd:collect:collectindexday:view\")&remarks=数据采集',''),('18e2752260f145e8852358ada529805a','1','数据采集-数据采集-数据采集','1','2015-10-30 11:59:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('18fbb85c74154dc0867045ee4e46efad','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:57:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('191257592bc44757a29979444662d17f','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:13:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('194755f68e9f44c1bb00941e199d0c39','1','数据采集-通讯录管理-列表','1','2015-10-30 15:44:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('19ff79350ddf4ad8bad67e758f00d8a6','1','系统设置-系统设置-菜单管理','1','2015-10-30 11:28:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('1adf3f1635b04f2eac7db90f3c7aefde','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:04:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('1b2ebfe4b33448868106bde95ade2487','1','内容管理-栏目设置-切换站点','1','2015-10-29 10:34:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','tabPageId=jerichotabiframe_4',''),('1be862bd1e2647e4a174425d7deea3b1','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:09:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('1c19c652a1ee4237843c351fedd698b5','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:33:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_5',''),('1c1a4c4400db4f2c98d103971abd0403','1','内容管理-内容管理-内容发布-文章模型','1','2015-10-28 19:35:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/article/','GET','category.id=2',''),('1c3d46117ac54ede9a04fc28162e7509','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:25:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('1c671cc93c164a03b36afaae65cb9fe2','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 18:05:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon= icon-bar-chart&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('1c796c7446954cb7bf6767c8da620976','1','系统登录','1','2015-10-30 10:37:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('1c986ceca08c4255a858fb6090eca9f4','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:29:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=&name=超级管理员&oldEnname=&enname=super_admin&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('1cb412ffb98147739e2da5da4548df30','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部',''),('1cc34a6bf70a4fa9906cf0e3972c1b99','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:58:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('1d456831dc9a44d0925f812a3424ff56','1','我的面板-个人信息-个人信息','1','2015-10-29 11:15:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_1',''),('1dab809f88214aa68860d3334f14d54f','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:43:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=组织机构&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=1&customListView=frontListCategory&customContentView=frontViewArticle&viewConfig=',''),('1e038c7d5ef04940a1b49a7ec66d65b1','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:13:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=表具管理&href=&target=&icon=&sort=150&isShow=1&permission=&remarks=',''),('1e1bdb6a90724bd8931bebbe5107a66f','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 15:17:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('1e9c22565fcd4e3a96e86f159406a83a','1','数据采集-数据采集-数据采集','1','2015-10-30 15:21:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('1f5ea7208a814f5d8c292771cf4eeae8','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:47:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('1f74bf6471324c299462850c086ed786','1','数据采集-通讯录管理-列表','1','2015-10-29 11:49:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('1fd99f646321447096ab2f3b93e76e31','1','系统登录','1','2015-10-29 14:57:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=2',''),('20066761cd854a23b4f2eadb1dc367d2','1','系统设置-系统设置-角色管理','1','2015-10-30 15:20:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_6',''),('202459ac14234354a75c990541894864','1','系统登录','1','2015-10-30 15:10:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable/form','POST','id=&name=meter',''),('2044179a57c94f1783cb8782f8000250','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:25:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('205e410f45274112852cab177ddd7c0a','1','系统设置-机构用户-机构管理','1','2015-10-29 11:48:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_2',''),('216a91203c4d4031ad5c94788f21ba25','1','系统登录','1','2015-10-29 11:02:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=2',''),('21c2d0425a8a4de4a144ed3435ce4082','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:58:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=34901c6668144c47bba3a418219afcf4',''),('22e0652f74a24c6cb9670b5fd713b0da','1','系统设置-机构用户-用户管理-修改','1','2015-10-30 15:20:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=denofiend&loginName=denofiend',''),('22ed8e8a41384129b6c4ec46232d2b4d','1','系统设置-系统设置-菜单管理','1','2015-10-29 16:26:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('236227705a9147ada90d4925d0b34d2c','1','系统登录','1','2015-10-28 19:34:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('23a0795a4f8f40beae1f8b8bf1fb53be','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('23ae585af4d14a58abfcac1cfff941a5','1','数据采集-数据采集-数据采集','1','2015-10-29 14:57:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('2426e03b4cbc4b4a9d170c8e0b8e2963','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:04:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=1&company.name=山东省总公司&office.id=2&office.name=公司领导&no=0001&name=系统管理员&oldLoginName=thinkgem&loginName=denofiend&newPassword=&confirmNewPassword=&email=zab08@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=最高管理员',''),('2482d1e8836d4c3fa8bb861afba4c1e8','1','代码生成-代码生成-业务表配置','1','2015-10-29 14:25:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('24a33fc182434dfca109a5dd1b837049','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:47:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('24b63c40b7744d69957f560136498076','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:58:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=34901c6668144c47bba3a418219afcf4',''),('2516d18693b7481db7b51b9387fde134','1','数据采集-数据采集-数据采集','1','2015-10-29 15:05:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('253f0e2817f4470aa5964901a4c45258','1','数据采集-通讯录管理-列表','1','2015-10-30 15:18:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('25f793064f684876a1bf64929baa2207','1','系统设置-机构用户-机构管理-修改','1','2015-10-29 10:31:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/save','POST','id=&parent.id=&parent.name=&area.id=d09686c9297e4535ab675c819bf12023&area.name=北京&name=北京市电子设备科技公司&code=&type=2&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=&childDeptList=2&_childDeptList=on',''),('26595cc0cf0d4f2b89262e3ba0dbc9c5','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:01:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=2',''),('266f3c3eeabe4fa79294b01f57466a82','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:50:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('2682460ee08d43f1b89e8e7572e100c9','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 15:16:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=f13b7aa1f6184aefba9a601324384532',''),('27508386118a4ad3b2c04f8931a4ee79','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:59:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=46e219abdb3243bfa8fae25e9a2b0558',''),('27b2cf0aa3514752b5235e81fc50fb49','1','我的面板-个人信息-个人信息','1','2015-10-29 10:54:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('27b468125863431eb5472df38e405c75','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 10:31:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=0,',''),('27e39be9bb4145d8b2c2ff5a45f88ef6','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:54:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('27edd7cf77c44d6ea332d1d75a592f3e','1','内容管理-栏目设置-站点设置','1','2015-10-29 11:12:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/','GET','tabPageId=jerichotabiframe_27',''),('28d2ee2c04f04c268b190fb101d321b4','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部',''),('28dc3fab9d8c4f66968259d71e97313a','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:59:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('28e5231bb6984f6795db47dec6f4b41f','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 18:06:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon= icon-certificate&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('291c0cfb3d7f41a081bb373438724d9d','1','系统设置-系统设置-字典管理-查看','1','2015-10-30 15:45:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/form','GET','id=17',''),('292c437e76114e41998674187ea4d1d8','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('298edaf04ee546629922b8500a64ad48','1','系统设置-机构用户-用户管理','1','2015-10-29 10:58:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('2a1b5c90a0eb4093916048ac33c96e50','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:14:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=系统配置&href=&target=&icon=&sort=180&isShow=1&permission=&remarks=',''),('2a23ec5a5eaa4162a1e8af0568ca6c93','1','数据采集-数据采集-数据采集','1','2015-10-29 15:04:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('2b145404c76346c2b1d65b5f2b71fc7f','1','系统设置-机构用户-机构管理-修改','1','2015-10-29 15:08:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/save','POST','id=61029703d5c247d0b48f1dc63ce98000&parent.id=&parent.name=&area.id=d09686c9297e4535ab675c819bf12023&area.name=北京&name=北京市电子设备科技公司&code=&type=1&grade=1&useable=1&primaryPerson.id=&office.primaryPerson.name=&deputyPerson.id=&office.deputyPerson.name=&address=&zipCode=&master=&phone=&fax=&email=&remarks=',''),('2b2404a223a64edcbc47a0a69aa94b44','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:43:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=组织机构&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=2&allowComment=0&isAudit=1&customListView=frontListCategory&customContentView=frontViewArticle&viewConfig=',''),('2b71f012784847548fdc8fc45e9e922a','1','系统设置-系统设置-菜单管理','1','2015-10-30 11:28:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('2c24d832df9b4c879d8f33186b0fcb3c','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:53:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('2c455edf3eda43b7bacc81a7cf5728ab','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:20:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('2c6ce82db0574a83a3289e1a3019254e','1','内容管理-内容管理-内容发布','1','2015-10-29 10:33:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_4',''),('2cd47d7ed1a04b439093cf52ca87add2','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 15:20:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=ef4aa2be83bb4f2c8afc08873092d692&parent.id=e2e17e5087584d2da2c04a6126d1cdd2&parent.name=表具管理&name=仪表信息表&href=/eospd/meter/meter&target=&icon=&sort=60&isShow=1&permission=eospd:collect:meter:view,eospd:collect:meter:edit&remarks=',''),('2ce6d0d8943647bf9c5398c74c20d3e5','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:52:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('2d1a8ea0b5cf457f9eac1ae1b6ebe194','1','数据采集-通讯录管理-列表','1','2015-10-29 15:19:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('2da003ecdebd4bdf9842100d61dc6edd','1','系统设置-机构用户-用户管理-修改','1','2015-10-30 15:21:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=denofiend&loginName=denofiend',''),('2ddf7f0502f34124ae1d10618b02e441','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 14:57:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=1&company.name=山东省总公司&office.id=2&office.name=公司领导&no=0001&name=系统管理员&oldLoginName=thinkgem&loginName=thinkgem&newPassword=&confirmNewPassword=&email=thinkgem@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=2&_roleIdList=on&remarks=最高管理员',''),('2e1c4104d8fe4af787e9efd32ad4b72b','1','内容管理-栏目设置-站点设置','1','2015-10-29 10:34:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/','GET','tabPageId=jerichotabiframe_3',''),('2e6dcd4492d3402fb56375fcd6b1a5d4','1','系统设置-系统设置-字典管理','1','2015-10-29 11:03:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=3&pageSize=30&type=&description=',''),('2e7cd252e3ba4f5fb0ec5c57860eca73','1','内容管理-内容管理','1','2015-10-29 10:51:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('2ea02204bdc648f2bdd1af6bc06a13c3','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:48:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('2f6932dee6c8481987776e45a8823d92','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:15:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('2fac045ea3734e56afb05c9caea9ee3f','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 15:06:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=e2e17e5087584d2da2c04a6126d1cdd2',''),('2ffd0eaa9e3c45d29d5aea4d5aacd683','1','数据采集-数据采集-数据采集','1','2015-10-29 15:05:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('3002bcb4559f4699a2d9c8d1e8c12b4a','1','代码生成-代码生成-生成方案配置','1','2015-10-30 11:43:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('302c1e520aac4f6d97cbe0791c25716f','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('30a8322758454c4cb5144f880d84f035','1','系统设置-系统设置-角色管理','1','2015-10-30 15:21:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('30b47bfe465b4aca89eea07c18fedf9a','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:05:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('31ddda19287e49649b1b5990404284e1','1','数据采集-通讯录管理-列表','1','2015-10-30 15:22:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_9',''),('32981bb0de314b1f8146ac7450d8704b','1','系统登录','1','2015-10-29 16:25:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=2',''),('32d145d48b564dd4bb5196f658b52bf4','1','数据采集-数据采集-数据采集','1','2015-10-29 15:03:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('32faca13417f4c4e8901566fdf793ca1','1','内容管理-内容管理','1','2015-10-29 10:36:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('3328d8cca31c405da66ad17191758077','1','我的面板-个人信息-个人信息','1','2015-10-29 11:15:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_1',''),('3364697e6d644ff8887d783f54de3bea','1','系统登录','1','2015-10-29 13:56:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('337e3af092af464d9526448e833641ad','1','数据采集-通讯录管理-列表','1','2015-10-29 15:07:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('33ae7f26e5664a61bc91af4d7f56822e','1','数据采集-通讯录管理-列表','1','2015-10-29 14:57:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('33bb4f8c0ed542f089cbd0e3fe396e5f','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:02:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('33db124dc3f249f3a85ede87cd952e21','1','系统设置-系统设置-字典管理','1','2015-10-29 11:03:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_8',''),('3454b97bc9b24f0595f38efe86c88c19','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:50:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=62&parent.id=1&parent.name=功能菜单&name=在线办公&href=&target=&icon=&sort=200&isShow=0&permission=&remarks=',''),('3494053c269240ee96629fbe529bf6d9','1','系统登录','1','2015-10-29 15:02:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('34b4107a4a054cb08bee180cd4c7b841','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:25:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('34d7779876d941d1990ee7cf8e180095','1','数据采集-通讯录管理-列表','1','2015-10-29 15:05:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_4',''),('3511b63c96a04faa8d8985840ccedebf','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:54:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('358fb3bc649c4d6b93e112b2e1d5c372','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:43:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_11',''),('36263e8b65dd4dd1b7bc5d974b129e78','1','内容管理-内容管理','1','2015-10-29 10:51:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('37418f869d7f4c6abe089b8a5cf97609','1','数据采集-数据采集-数据采集','1','2015-10-30 15:43:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('3758179597c4459eb5ad7db6b3d3f1aa','1','系统登录','1','2015-10-29 15:58:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','',''),('377815de05594386b4f8c5aecec948cb','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:53:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=我的面板&href=&target=&icon=&sort=100&isShow=1&permission=&remarks=',''),('3798ebae1a2843eabaa8eb0f5d8a3486','1','系统设置-系统设置-菜单管理','1','2015-10-30 14:28:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('37fedf465fb3424eaabb299860dbd7e7','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:53:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('380e864efb2c4b2f8573750751cd8785','1','数据采集-数据采集-数据采集','1','2015-10-29 15:49:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('38c1e4c452784d498cdcf1cd43449bbf','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:06:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_10',''),('38cbd60f5be44e2bad8674ee4b8ffae7','1','数据采集-通讯录管理-列表','1','2015-10-29 12:00:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('392c692808cd4dfbbd40192c95acfdbd','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('3953ea29c7a54df3a75b08d261033171','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:19:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('3a056dcf336144f38b4a4a8cb05ef543','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 11:12:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('3a57a7123a304b54acef40d79c5ccbb3','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('3a9d69a7e4774d309655978580f8acb9','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:46:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('3aa2e350a37940529c3096b59f7f368d','1','内容管理-内容管理','1','2015-10-29 10:33:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('3b8df327c3274c80b9509f1a0f109cc7','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部',''),('3bdbb9be99c14a5d868806884474f277','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:53:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('3bea8dcfb66848b984537ccee7d30dbf','1','代码生成-生成示例-主子表-查看','1','2015-10-30 14:36:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain/','GET','',''),('3c47b5192f8d4c339c10c860cc9934b2','1','代码生成-代码生成-业务表配置','1','2015-10-30 14:34:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('3cb47827c49c41c59634d43b56a988a0','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:22:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=9eaec5d7aff94d94aa2f77625754cd75&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=超级管理员&name=超级管理员&oldEnname=super_admin&enname=super_admin&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=85&officeIds=&remarks=',''),('3d1edb25641d46cba526242d416329af','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:59:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('3d4a8e4146b245468f6208f750f3e8dc','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:58:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('3d5641d5fb6f42e59af1509ab1725aa4','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:35:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('3d70a26548da451aa82260450f01c9fa','1','系统设置-系统设置-角色管理','1','2015-10-30 15:18:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_4',''),('3dcfec8e8b4842d3816a9f23829f5489','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:43:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=27',''),('3df4380afcda4ccb88f192a4de54b334','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:03:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('3e0476035043428e88aaa5f1fe6df845','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:20:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/assign','GET','id=9eaec5d7aff94d94aa2f77625754cd75',''),('3e1dca731614450e975f11a0020e061b','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:29:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('3e468f1544604aa2b0ef7bb47fba612d','1','数据采集-通讯录管理-列表','1','2015-10-29 18:05:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_3',''),('3f4646e47789464cbf53443088abed76','1','系统设置-机构用户-用户管理','1','2015-10-29 11:02:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_5',''),('3f99054df09b487f8198d4d3a44c34a6','1','内容管理-栏目设置-站点设置-修改','1','2015-10-29 11:12:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/delete','GET','id=2',''),('3fb94f4159e24121820a3b363e4f14df','1','内容管理-内容管理','1','2015-10-29 11:59:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('3fc7fae0905841b0aaedca10374d4417','1','数据采集-数据采集-数据采集','1','2015-10-29 15:17:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('405be53b620343e2a95226ed4a48b4c6','1','数据采集-通讯录管理-列表','1','2015-10-29 15:42:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_10',''),('40c220725d1540f29008dc36a1bfb0c4','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:22:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('40ed17bbb9b14f44a0d56822bf3fb03c','1','系统设置-机构用户-区域管理','1','2015-10-29 11:11:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_18',''),('4105fe0abb854f82bbbc2b3fee5f295c','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 14:49:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('416e0622a3054004b2d0647954dc5d11','1','代码生成-生成示例-主子表','1','2015-10-30 14:36:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain','GET','tabPageId=jerichotabiframe_3',''),('4185bc75577e45bf9a47e3518ea21884','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:47:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('4228439f92474eaca40e168f2f904d51','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:58:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=34901c6668144c47bba3a418219afcf4&parent.name=通讯录管理&name=列表&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('432828c6826a40b9ad5d9070043d66b5','1','数据采集-数据采集-数据采集','1','2015-10-30 11:57:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('434831759b1e4e47b3675177833f712f','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:20:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('4472f251105e42b28376e5cf574e3a6a','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:35:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=组织机构&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=1&customListView=frontList&customContentView=frontViewArticle&viewConfig=',''),('45072e0c67aa48278bd665a7f8b8be7a','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:16:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('454ae2f6016143f8acd94e9b5037425d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:07:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('45bcb8b2e69740459ddb5a63a2cc299a','1','系统登录','1','2015-10-30 11:43:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=79',''),('46022047154043b49a4a6d17052f2f16','1','内容管理-内容管理','1','2015-10-29 10:35:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('4614e53365cd412ba880225f7d942a77','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 11:28:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('46b230802a3b4be7a3ee8bfb62254667','1','数据采集-数据采集-数据采集','1','2015-10-30 15:23:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('46b648c253694f76b2166e17dbd29e5c','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:43:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=&photo=&company.id=61029703d5c247d0b48f1dc63ce98000&company.name=北京市电子设备科技公司&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&no=0002&name=huang&oldLoginName=&loginName=huangshiguang&newPassword=&confirmNewPassword=&email=&phone=&mobile=&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=',''),('46c49702fead43ef9d62e4d7eaa4f04d','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('47425f56967548febcafa9fa453e1aeb','1','系统登录','1','2015-10-30 14:47:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('4745668f28a94978962fda78026d0596','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 16:26:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('47c32934bdbd4090b51afe0d98116bb2','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:50:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=79',''),('480369a1840c41489c6c439b95f7c5bd','1','系统设置-机构用户-机构管理','1','2015-10-29 12:00:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_4',''),('4879c11a7bec471c81102acfbc776ecf','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:50:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('48d0665b269d46d7aa9193da9b66ab15','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 15:16:54','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=f13b7aa1f6184aefba9a601324384532',''),('48dac8ad6d284dedad018def3cfcc36f','1','数据采集-数据采集-数据采集','1','2015-10-30 15:18:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('48eda09aefdd440795a156f021e0b8b8','1','数据采集-通讯录管理-列表','1','2015-10-29 13:56:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('491e65f834b446019636e35aa356b627','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=f0ff06b9cbb442c081afc059b3777352&office.name=开发部',''),('49cb9b598bec473d8ac16b825428c8a8','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:13:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('4a460fe947d2437aad54c00894340b50','1','内容管理-内容管理-内容发布','1','2015-10-29 11:59:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_4',''),('4a97a1cb90724485b273ca51a8207ec2','1','我的面板-个人信息-个人信息','1','2015-10-29 10:35:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('4a97eb061f1545a987ba6b9e43a1d14c','1','数据采集-数据采集-数据采集','1','2015-10-30 15:32:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('4aacd91f29734ed09d253acbdcc80356','1','系统设置-机构用户-用户管理','1','2015-10-29 11:47:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('4ad311dcfd614e579464a5f5b1abc90f','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:05:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_4',''),('4b3dd02530fb4b85ad24b83655a57fe6','1','内容管理-内容管理','1','2015-10-28 19:35:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('4b5037f691524bc78d483b32ae440adb','1','系统设置-系统设置-角色管理','1','2015-10-29 15:00:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','',''),('4b519ccf2b09481ca01c08e4d045d141','1','数据采集-数据采集-数据采集','1','2015-10-30 14:49:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('4b69469844e8450a80ae6fcb46e0bbfc','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:01:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=6',''),('4b6bceeecc354feebbc3593e98cc4a77','1','系统登录','1','2015-10-29 15:42:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday/','POST','pageNo=1&pageSize=30',''),('4b9b3521ff3c4505a51822b2fe8812fb','1','系统设置-机构用户-用户管理','1','2015-10-28 19:35:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('4ba85e8cd4db4efda76fae1895bb1c28','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 11:28:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('4bcfa227e1af48ae9be74ffffb173c99','1','数据采集-通讯录管理-列表','1','2015-10-30 11:12:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('4bdfef2828b84643948fc9c9a59b87c2','1','系统设置-机构用户-区域管理-查看','1','2015-10-29 10:30:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/form','GET','id=1',''),('4bea2212b463405b9cdd122f77f876d6','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:35:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('4c48362fe347464091a391ead903c91a','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 15:06:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=e2e17e5087584d2da2c04a6126d1cdd2',''),('4c7f7fa00d1c44ca89c0ae938979ed9a','1','系统设置-系统设置-角色管理','1','2015-10-29 15:29:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('4c89a52729824402878afdb8289d4a80','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:29:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=1&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('4cf4cf34b6cc4ec6a0c874cbef6b6c37','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 14:25:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=79&parent.id=1&parent.name=功能菜单&name=代码生成&href=&target=&icon=&sort=5000&isShow=1&permission=&remarks=',''),('4d390e3b000b40af98b7530dd97789d0','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:19:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_2',''),('4daf9fca638b4f4bbea3aab63ef82e7a','1','数据采集-数据采集-数据采集','1','2015-10-30 10:37:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('4e7f9acdd1834005bb3c2741184ad42f','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 14:31:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('4e933be82a1f485094d8a3cf57475629','1','我的面板-个人信息-个人信息','1','2015-10-30 15:19:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_5',''),('4e9f30c535c9401498f1871fbd4fb651','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:58:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('4f49c094f24a4b31a853b299cffea7fe','1','系统登录','1','2015-10-29 14:25:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=2',''),('4f4db16dc6dd4077adc2f374214b98ea','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:43:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('4fe59c6ae91b47d2b1d014e662064afb','1','系统设置-系统设置-角色管理-查看','1','2015-10-30 11:15:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','',''),('5000283663c2425f8612981b4ece7113','1','数据采集-数据采集-数据采集','1','2015-10-30 14:33:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday/list','GET','tabPageId=jerichotabiframe_0',''),('503ee3e00d8b4fcc97761d6c0f633c23','1','在线办公-通知通告-我的通告','1','2015-10-29 10:41:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_4',''),('50441530d72640bf899e9af3b68d0f9c','1','代码生成-生成示例-树结构-查看','1','2015-10-30 14:36:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testTree/form','GET','',''),('50a8f73c2eee40c082be27ef7d878ac6','1','我的面板-个人信息-个人信息','1','2015-10-28 19:38:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('513b6758f91e4b028f7dc269b731429d','1','内容管理-内容管理','1','2015-10-29 10:36:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('51db03e3e473445ab4338c322bfa2654','1','代码生成-生成示例-树结构','1','2015-10-30 14:36:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testTree','GET','tabPageId=jerichotabiframe_4',''),('51eca45eecbd4fb28760b54c4e75aece','1','内容管理-内容管理-内容发布','1','2015-10-29 10:51:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_0',''),('523ee9fadff94ce1813655493797654c','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 10:30:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=0&parentIds=0,',''),('5263ef85060f4280a0640098be3775c4','1','系统设置-日志查询-日志查询','1','2015-10-29 14:58:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/log','GET','tabPageId=jerichotabiframe_9',''),('53d44434ba094b9eaf03e7c1b0fc9341','1','在线办公-通知通告-我的通告','1','2015-10-28 19:38:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/oa/oaNotify/self','GET','tabPageId=jerichotabiframe_1',''),('5487bc0d25bc4e71a9b7446938c72477','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 10:31:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/form','GET','parent.id=',''),('54eb46ab8db9484682467df4ad45c251','1','内容管理-内容管理-内容发布','1','2015-10-29 10:34:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('54fd35ec2b714efc91c212a5fe053778','1','系统设置-系统设置-菜单管理','1','2015-10-28 19:35:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('553c442835df46599c6ebffaf667819a','1','系统设置-系统设置-字典管理-查看','1','2015-10-30 15:44:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/form','GET','sort=10',''),('55758a0a9e5349cc9c9197a5250394cc','1','系统设置-系统设置-角色管理-查看','1','2015-10-30 15:21:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=9eaec5d7aff94d94aa2f77625754cd75',''),('56542be2c2f24683a2a6bcb2e330d74b','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 11:28:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('56e7fe623b0c40cd8d11cd9746d71541','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:08:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=61029703d5c247d0b48f1dc63ce98000&company.name=北京市电子设备科技公司&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&no=0001&name=系统管理员&oldLoginName=denofiend&loginName=denofiend&newPassword=&confirmNewPassword=&email=zab08@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=最高管理员',''),('56ea644f431e41d2a620f9d636aab7ac','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:59:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=f13b7aa1f6184aefba9a601324384532',''),('56fe433d66714a00982273944e8983c6','1','内容管理-栏目设置-站点设置','1','2015-10-29 10:33:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/','GET','tabPageId=jerichotabiframe_6',''),('5742b437c1ac45d49fa83c9874bf874e','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:09:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('584240bb5e9b48cfa622f5af8392a4b4','1','数据采集-通讯录管理-列表','1','2015-10-30 14:26:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('585cbc139dea43f094c36160b4ac570f','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:09:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/delete','GET','id=3',''),('59fae72e78044814b196bffbd75ae89c','1','代码生成-生成示例-单表','1','2015-10-30 14:34:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testData','GET','tabPageId=jerichotabiframe_2',''),('5a55d7a24f6c4fb893b73ac914353c1f','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('5a753fbf54fc4db7a181b7009c986707','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:17:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('5ae182cc11c74c8787738fd3e1f184bd','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:31:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('5b25d94dc67c4b8880509b139114e460','1','内容管理-内容管理-评论管理-查看','1','2015-10-29 11:12:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/comment/','GET','status=2&tabPageId=jerichotabiframe_24',''),('5b411d2bddf44220937269b1f27a248e','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:22:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/assign','GET','id=9eaec5d7aff94d94aa2f77625754cd75',''),('5b8a30783fda446dabc2083de14f6fca','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 14:57:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=thinkgem',''),('5b906ef9bed84282b5d8211c86669946','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:02:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/usertorole','POST','id=6&___t0.07830307446420193=',''),('5bbab9ad4b194fba995cf770ba36890d','1','系统登录','1','2015-10-30 11:56:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('5bde9ba1cf0e42e79e25eaa4cff165b6','1','系统设置-系统设置-角色管理','1','2015-10-30 15:22:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','',''),('5c316e4e70314b0cb2ac57faa63a1767','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:50:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','',''),('5c474109ffbe48e3b8ed894c12139993','1','系统登录','1','2015-10-30 11:48:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('5c4caeff427b4f03b192d57d49a5da1d','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:05:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_4',''),('5da9d14461994d8d88f668e3a16810a9','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:44:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('5dc6d691e6c94e988e77b48284bea4b3','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:02:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/users','GET','officeId=61029703d5c247d0b48f1dc63ce98000',''),('5dcdb934a12346cebfc873b8e7676109','1','代码生成-代码生成-生成方案配置','1','2015-10-30 15:12:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_6',''),('5e1aeaf6a3c246158b2533e3b49809e4','1','数据采集-数据采集-数据采集','1','2015-10-30 15:44:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('5e1e6e940f9b4e00b3fac4bba3496d29','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('5e5b300569c543808ca3ad4e8723b78f','1','数据采集-数据采集-数据采集','1','2015-10-30 14:26:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('5ef3970358974d998d86afc038282585','1','内容管理-内容管理','1','2015-10-29 11:59:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('5ef8195858b2458b9eceb57663336987','1','数据采集-通讯录管理-列表','1','2015-10-29 16:36:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('5f1c087762be41199b826e28092065d8','1','内容管理-栏目设置-栏目管理','1','2015-10-29 18:01:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_4',''),('5f24543c6abb4e689a1c1f033e9235ef','1','内容管理-内容管理','1','2015-10-29 18:01:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('5f67275c47834335b727db4b155c54b5','1','系统设置-机构用户-用户管理','1','2015-10-29 10:54:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('5fe1b8715e0743948d2c6714d0971e9d','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 18:05:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon= icon-bar-chart&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('600e87a819aa4e6e82487a5789efbc13','1','数据采集-通讯录管理-列表','1','2015-10-30 15:03:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('6027993e53b94d44b4ebcd71fcec34e2','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=f0ff06b9cbb442c081afc059b3777352&office.name=开发部',''),('60749acd9d6f418e992acdb0a9a1adc9','1','系统设置-机构用户-区域管理','1','2015-10-29 14:57:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_4',''),('60fb1ca1f2c140159e28ef0d8883d4a8','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:06:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('6168dea132494b5a9b4ab88cdcaffd10','1','内容管理-栏目设置-站点设置','1','2015-10-29 11:12:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/','GET','repage=',''),('619a3c0440304967b660f8da060db6d1','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:04:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('636b93dd03164636a4615770f4d1f36d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:31:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('63978bec4db54fb6a00002467e957103','1','数据采集-数据采集-数据采集','1','2015-10-29 14:46:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('63d5cc22b00648d5bc0703fce2951de3','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:30:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('643cecca01294687b300a8f4b904764a','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:54:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=通讯录管理&href=&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('64574016445546749aa33a120c118a3b','1','数据采集-数据采集-数据采集','1','2015-10-29 15:03:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('647d91a419844c89ba1df003e8fd2f1e','1','系统设置-机构用户-机构管理-查看','1','2015-10-30 15:05:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('64cce6536b8845498891890f5f45b685','1','我的面板-个人信息-个人信息','1','2015-10-29 10:59:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('658d6e520d714f8c9f0e5320fef1068e','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:51:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('65cf04d28de245558e01d0ba8c525f92','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 11:58:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('66d60a18c17e4f76b16fafeec35cb879','1','系统设置-机构用户-机构管理','1','2015-10-29 14:57:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_3',''),('66f1005f6dad4c5cb15f440f5a40f3ac','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:48:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=46e219abdb3243bfa8fae25e9a2b0558&parent.id=34901c6668144c47bba3a418219afcf4&parent.name=通讯录管理&name=列表&href=/sys/user/info&target=&icon=&sort=31&isShow=1&permission=&remarks=',''),('6701472f47f7428791b48c5bc0f3c3c8','1','系统设置-机构用户-机构管理-查看','1','2015-10-30 11:12:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('6726f80070724954be3c4624406004f7','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:21:54','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('673e71a32ce544d5b1769eb43d24e0a5','1','数据采集-通讯录管理-列表','1','2015-10-29 11:49:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_1',''),('674893f7d02c485482c0bc778d44d712','1','代码生成-代码生成-业务表配置','1','2015-10-30 15:24:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_2',''),('67661e265078434885cb5627ec5141a9','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:58:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('67a3dc1a80394a9498349b86816e057b','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('67bb9e378f604fb090fd6520c2cc3212','1','数据采集-数据采集-数据采集','1','2015-10-30 11:12:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('67eadc5942e5481ca5b667e219975fac','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:46:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=27',''),('6843b526e05b4c5a9de11df14f14a980','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:59:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('68807c4231364d8db8efd9146e11c387','1','数据采集-通讯录管理-列表','1','2015-10-29 16:26:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('68c5e581188542cdaad48569806e3f9b','1','数据采集-数据采集-数据采集','1','2015-10-30 14:54:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('6926987be1bd42089014c9fb21a45927','1','数据采集-通讯录管理-列表','1','2015-10-29 15:03:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('69b80c7b1fb44bc8aa82046655d0a112','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:17:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('69cdc982550c4e6a98df831f55c5151f','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:22:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_12',''),('69eadfefbb4547a9959a9feb32afc699','1','数据采集-数据采集-数据采集','1','2015-10-30 15:36:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('6a6d22c7a945434f899539d6bf34c328','1','数据采集-数据采集-数据采集','1','2015-10-30 15:19:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('6a791615bf63442ca8fa1c25f92a63fe','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:02:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('6abf6a1060bb4c3ba6eb5f18cbe5e0b6','1','我的面板-个人信息-个人信息','1','2015-10-29 17:59:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_1',''),('6b061f0703764c738a47d5508b8cf1ca','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 14:32:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('6b09d061960c44d885ffadaed4747b9a','1','数据采集-数据采集-数据采集','1','2015-10-30 14:14:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('6b2d7716735a4bcba0cd50444135c821','1','系统设置-系统设置-菜单管理','1','2015-10-30 11:13:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_5',''),('6b5fd139162d4c028619f07bfc7ac507','1','内容管理-内容管理','1','2015-10-29 11:12:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('6c60b82f3e374fee9efb4ce9200eda3c','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:09:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('6cab0b539b0d4dae8e5993b866111c29','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:58:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=34901c6668144c47bba3a418219afcf4&parent.name=通讯录管理&name=拓扑图&href=&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('6cb2c334fa39423cb9ba23effa871bf7','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:54:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('6cbaabd63fbf4a5a85e82644ec44a83d','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:23:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('6cf7d27f715b44608053085d3cbde714','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 15:17:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=f13b7aa1f6184aefba9a601324384532&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=99&isShow=1&permission=eospd:collect:collectindexday:view&remarks=数据采集',''),('6d58499bb664467587726fc9fece5dd7','1','代码生成-代码生成-业务表配置','1','2015-10-30 11:43:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('6d58ea0730c74f699c3a93e4105c8ff2','1','系统设置-系统设置-字典管理','1','2015-10-30 15:44:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=2&pageSize=30&type=&description=',''),('6dea513ff83f40c185aa342178dd7d3f','1','代码生成-代码生成-业务表配置','1','2015-10-30 14:41:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('6decc0301f51427faf8cf059c9484e49','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:52:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_11',''),('6dffd2bdecea479486a9953870321dec','1','系统设置-机构用户-机构管理','1','2015-10-30 15:05:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_3',''),('6e427f4bb6d34bdf8c9021e5d63ee808','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:02:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/users','GET','officeId=61029703d5c247d0b48f1dc63ce98000',''),('6ed5ef5eb9514c60b454eefe80fe3ee6','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:47:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=46e219abdb3243bfa8fae25e9a2b0558&parent.id=34901c6668144c47bba3a418219afcf4&parent.name=通讯录管理&name=列表&href=/sys/user/info&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('6efda0b0dff841e79a3bb34d23bbbd19','1','内容管理-内容管理','1','2015-10-29 10:33:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('6f347c5ed17e492ba154c41a3886b127','1','数据采集-数据采集-数据采集','1','2015-10-30 11:29:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('6f5a3481929c472e85b4ee4c7e645779','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 13:56:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('6f9fd1b3f22942d497b3a68608779960','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:36:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=3',''),('701a498ec4604968bddc2653ed89f090','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:52:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('711650bb956f41af9e08b95b04c8a3b8','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:13:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('711cedbe77494bac8c9b817a68489a3c','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','tabPageId=jerichotabiframe_28',''),('719d68d79de542fd909ef6fc00a176fc','1','数据采集-数据采集-数据采集','1','2015-10-30 15:19:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('71c404ab55b3424182bc2e95a974bd1a','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:12:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('725eea8a6f4d462b9db1fba3a7990d54','1','内容管理-内容管理','1','2015-10-29 15:08:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('72672421451a4b6f906287fc93a17148','1','系统登录','1','2015-10-30 14:32:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('7288a61ecad849b98ff1292172a913d0','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 11:28:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=icon-bar-chart&sort=30&isShow=1&permission=eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit&remarks=',''),('72ccd9e14e804154ac2ddde76617eefa','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:01:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=2&office.id=2&office.name=公司领导&oldName=公司管理员&name=公司管理员&oldEnname=hr&enname=hr&roleType=assignment&sysData=1&useable=1&dataScope=2&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('72e41c42112d4430b7470a4f9a0bec13','1','系统设置-系统设置-角色管理-查看','1','2015-10-30 15:22:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=9eaec5d7aff94d94aa2f77625754cd75',''),('7355323276594a47805723c25aebce94','1','在线办公-流程管理-模型管理','1','2015-10-28 19:38:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/act/model','GET','tabPageId=jerichotabiframe_3',''),('7384c3bde30b4d59a8e8bc45ba20ed6e','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:13:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=能流图&href=&target=&icon=&sort=120&isShow=1&permission=&remarks=',''),('73cb2fa141654371bf5a46a5a38b6775','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:14:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('740c6e2ed7384190aad3017c339ac087','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 13:56:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('7429fd531a1e4743b65c66ab63d62858','1','代码生成-代码生成-生成方案配置','1','2015-10-29 14:27:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('7434846959c2423787990a39aff6f46b','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:43:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=&loginName=huangshiguang',''),('743ccd69eaa442fd9ace166a971fccb8','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 15:08:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('7487745ca40b42798c6e34772f8ba79f','1','数据采集-数据采集-数据采集','1','2015-10-30 14:34:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('751a275e93a04da8be6efb993ea491de','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:13:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('752035c6a05745a59cf8cbbaa7cc299c','1','系统设置-系统设置-字典管理','1','2015-10-28 19:35:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_4',''),('75353ff1d2c04937a5ef479de6dd6979','1','数据采集-数据采集-数据采集','1','2015-10-29 14:45:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7574096772b54c9cb6cdaa61ce1e9fad','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:16:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('75879ab30ba940b8b4179902dac4808d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:19:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('76313319f4554e01aab7c6a07f1548a1','1','数据采集-数据采集-数据采集','1','2015-10-30 11:28:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('77d0b8927ccc4c3ba4cebaf0c50da09f','1','系统设置-机构用户-用户管理','1','2015-10-29 10:51:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('77d46ab671054704b7b78059bb112820','1','数据采集-数据采集-数据采集','1','2015-10-30 10:25:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('77f37a94689848149e898e32e967c18b','1','数据采集-通讯录管理-列表','1','2015-10-29 15:16:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('77feb0e291724bd4b3b99e403882a97d','1','数据采集-通讯录管理-列表','1','2015-10-29 18:05:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('7851b39710b243a49c3c0f92aeea1fbf','1','系统设置-机构用户-用户管理','1','2015-10-29 11:46:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('78769c27c03847e88e5b3c659f7d8831','1','数据采集-数据采集-数据采集','1','2015-10-30 14:41:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7975f2edd4324665a261540e39b178e3','1','数据采集-数据采集-数据采集','1','2015-10-29 18:05:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('79bd4d7e433e4f45b1f6e596863adb35','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:43:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('79fe02c6adce4eed9b0bccae48195edd','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:42:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=2&office.id=3&office.name=综合部&parent.id=1&parent.name=顶级栏目&module=article&name=组织机构&image=&href=&target=&description=&keywords=&sort=10&inMenu=1&inList=1&showModes=1&allowComment=0&isAudit=1&customListView=frontListCategory&customContentView=frontViewArticle&viewConfig=',''),('7a5e887ef9064afbb3c6757a49e1169c','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 11:12:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('7b91bb527cb5459f8fa12bf7ce84b473','1','内容管理-栏目设置-栏目管理','1','2015-10-29 11:12:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_26',''),('7bb6f0827fae4754b9744d273bd4f246','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:58:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=e27c92aafe694f66ae12cba7c4c0b866',''),('7bf6172dc6a74a4eb58fef47f747786d','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:53:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('7c3670d66f624f35a4e9132728b13058','1','数据采集-通讯录管理-列表','1','2015-10-29 14:25:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_0',''),('7c54e753780f4a758bf5402924ae1fc9','1','数据采集-数据采集-数据采集','1','2015-10-30 15:20:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7c96f19168444303a516645f5fba15d2','1','数据采集-数据采集-数据采集','1','2015-10-30 15:21:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7d03f37105274c019d18b4e18824b3ff','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7d2d3208efa947e88295fd506d840d84','1','系统登录','1','2015-10-29 10:51:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=5030&isShow=1&permission=&remarks=数据采集',''),('7dc98291de8a4ff58de397a6879e0f70','1','数据采集-数据采集-数据采集','1','2015-10-29 18:05:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('7f200b058c5941078ce8b694b66d29ce','1','系统设置-机构用户-用户管理','1','2015-10-29 10:59:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('7f33e86d98cb403e8b8374ac57eebb92','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:53:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('7fd103ecaad547ad8b2ee804851669cb','1','数据采集-数据采集-数据采集','1','2015-10-30 11:06:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('80196671a113454c90bd84488f5e2ba4','1','数据采集-数据采集-数据采集','1','2015-10-30 14:38:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('808856d1950f441f967c8b82559c2277','1','内容管理-栏目设置-栏目管理','1','2015-10-29 15:08:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('8090312f35f04f238c9c28b720a34241','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:50:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=27&parent.id=1&parent.name=功能菜单&name=我的面板&href=&target=&icon=&sort=100&isShow=0&permission=&remarks=',''),('812bd4f19d8847eeb507575657dc4649','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('8190e1ebaa3c4111af5e7bcfbada016e','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:53:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=62',''),('81b9cb098c4944e78ff40e666ee3ce96','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:50:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=62',''),('83880e8cd8b64a4d8fe0a0f0481cf39d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 12:00:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('83dc148e30ae4e64a6f249bdb4a6cbcf','1','系统登录','1','2015-10-30 14:58:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('840ea57e75c6429ba6305765ef9dcbba','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 18:06:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('841e5793156e4374b5a02d0cbaa844d0','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:42:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('84ade6e6c7914307810d685d25c0b558','1','代码生成-代码生成-生成方案配置','1','2015-10-30 14:42:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_2',''),('84f52666faa849b5b96414aed428ceff','1','数据采集-数据采集-数据采集','1','2015-10-29 15:05:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('852d5af3b0d5430a8600979c641fc6f2','1','系统设置-日志查询-日志查询','1','2015-10-29 15:30:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/log','GET','tabPageId=jerichotabiframe_5',''),('8584e2e753054d7abeb6e12dd266a7c7','1','系统登录','1','2015-10-30 11:12:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('85904e3df30c428ba05b23226cf88177','1','数据采集-数据采集-数据采集','1','2015-10-30 14:28:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday/list','GET','tabPageId=jerichotabiframe_0',''),('85cd43e6e6314442bef29f1682c6a0c7','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('864f5e303c9541d5baa444502f34d28f','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:05:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('8667115ffd694ce09ecc9a95174acbd6','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:47:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=46e219abdb3243bfa8fae25e9a2b0558',''),('8698dc8248e5481c8f981f29afa4394f','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:50:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('86dea90b7af8454dbc8600071f85bd07','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 15:17:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('86f2e680d5244f11bb1feffdb5729382','1','系统设置-机构用户-用户管理','1','2015-10-29 11:48:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('872d6e5fc771481f93528f84f4713af1','1','系统设置-机构用户-区域管理','1','2015-10-30 11:12:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_4',''),('874938ab389143cf912d446ee7858eeb','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('874fa46906ae41a8a25a677a4837d79a','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:00:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=f13b7aa1f6184aefba9a601324384532&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=99&isShow=1&permission=&remarks=数据采集',''),('880298b326bb46b19e498c5ef410a920','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:35:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('8877dfb4fa874fbf99d6058c87f00d79','1','数据采集-数据采集-数据采集','1','2015-10-29 15:59:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('888ea239854e48d4a2a9d3e503807afa','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:20:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('88e8bc5f96d14b5280a7c0088ada9ac7','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:59:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('8a79d272e88a4c5cbfe26a496b284f78','1','代码生成-生成示例-树结构-查看','1','2015-10-30 14:36:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testTree/','GET','',''),('8a9ee00f05684b5697787a29d0e2de44','1','系统设置-系统设置-菜单管理','1','2015-10-30 14:33:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('8bc3065c1c964f63a9f10da0a3a6c0ea','1','系统设置-系统设置-字典管理','1','2015-10-30 15:46:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_6',''),('8bce88ecab814cb3a7703b957f93aaa4','1','系统设置-系统设置-角色管理-查看','1','2015-10-30 15:22:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=9eaec5d7aff94d94aa2f77625754cd75',''),('8c01ebd763ff41a1ba3ebb195cabb737','1','数据采集-通讯录管理-列表','1','2015-10-29 18:01:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_5',''),('8c062a22894748f19c1878f0058b9303','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 14:25:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=79',''),('8ca2418e6ac7432a905ca8d8b15f364b','1','数据采集-通讯录管理-列表','1','2015-10-29 15:43:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('8ccd2f4275594737872c25d2513a861f','1','代码生成-代码生成-业务表配置','1','2015-10-30 15:36:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_2',''),('8d0f6f6008b84e1a982c0a75428097eb','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:03:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('8d846d1a24f24ca893be8b95c88754cf','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:47:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=2185be3f576b4a01be2c70062e25dfdb&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=/sys/user/info&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('8d8d8e0cce454a8da6f810e9c1b5819b','1','内容管理-内容管理','1','2015-10-29 10:53:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('8e3f378f6a0346e0b3e6fa306d5c1c7f','1','数据采集-数据采集-数据采集','1','2015-10-29 15:17:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('8e42659412154460a0925f83ce09ef41','1','数据采集-数据采集-数据采集','1','2015-10-29 14:59:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('8e754b80d4c94189b2076e0918b1607e','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 11:11:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('8eabda4cfccc4825bd5913a68105b449','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:19:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=1&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('8faf02354215440ba22871536703a9a1','1','在线办公-流程管理-流程管理','1','2015-10-28 19:38:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/act/process','GET','tabPageId=jerichotabiframe_2',''),('8fc8aad682944086a5901f1f99060895','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 10:31:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('905ac87c7d1047baba35a2d125110497','1','数据采集-数据采集-数据采集','1','2015-10-29 16:06:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('908b9fc8401f45d893462aa153d9dad8','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:46:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('90e4a0d407e84721bea9c59ed40ffd61','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:43:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('91707744b5834ce9831f2db4fa9684e4','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 15:23:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=ef4aa2be83bb4f2c8afc08873092d692',''),('9255938d6958499bb648dee2313e3f37','1','系统设置-系统设置-角色管理','1','2015-10-29 11:02:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_7',''),('929420bd21f04c24acc2e2a98915c2f3','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:09:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/delete','GET','id=4',''),('92e64d20e3194c78a970ed8542781097','1','系统设置-系统设置-角色管理-修改','1','2015-10-30 15:21:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=9eaec5d7aff94d94aa2f77625754cd75&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=超级管理员&name=超级管理员&oldEnname=super_admin&enname=super_admin&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('92e83f28b7bd41629feea791f2801470','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('931e97f4876544288cf70de109572722','1','系统设置-机构用户-机构管理','1','2015-10-29 10:31:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_2',''),('93cbffebf6184c949ba8c4f7dc90c02e','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:15:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('93cedb4b258d44c28683a0e50fe5b4be','1','数据采集-数据采集-数据采集','1','2015-10-30 11:12:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('94046b01c4ef4d8ab5d64f054c572495','1','数据采集-数据采集-数据采集','1','2015-10-30 10:25:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('9420cf7afd3d4ec3bf5b0a8288c41f96','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:29:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('9456994c8a8d4a178db7624bfcb507c7','1','数据采集-数据采集-数据采集','1','2015-10-29 15:49:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('94a3ab4a1f994361aa07c52f3b03b05e','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 14:33:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('94dc325f7e81417e941ab66d4838e61b','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:25:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('94faba64f8c947ce98ea8e6c39630c3d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:59:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('95152d40c6b346c195dada1031299a25','1','系统设置-系统设置-角色管理','1','2015-10-29 15:19:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('953787543d3d4fcba0041b944f99815c','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:23:54','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('95429ebc18a849cf9f3d01b110028854','1','系统登录','1','2015-10-29 16:06:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','',''),('955028dce1c44e0ab7b4b7b7ab91b964','1','系统设置-机构用户-区域管理','1','2015-10-29 10:30:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_3',''),('95a59456cdbe40bab54001310d675627','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:36:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('95b6abde4693410db488cc39173eb37e','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:09:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('95d40df35f1a4ea184c0e0563249c0a1','1','数据采集-数据采集-数据采集','1','2015-10-30 15:21:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('95d94692b7e34fbfb6f7044123749b42','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:43:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('961b3b6a9d3f43d1beca620fe3a9390f','1','数据采集-数据采集-数据采集','1','2015-10-29 16:26:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('9665be33ffaa4ae4920f705fb17af25d','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:50:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=27',''),('96f4c3c02ec348a18177e47503588640','1','数据采集-数据采集-数据采集','1','2015-10-30 14:59:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('96fbeb92bdb145c6ae8ba7d575a323cd','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 11:28:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=icon-arrow-right&sort=30&isShow=1&permission=eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit&remarks=',''),('97d40efcef404755a5f4eac8d4638426','1','内容管理-内容管理','1','2015-10-29 15:08:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('9823a33df2e747c082fb7fa62d09e67f','1','数据采集-通讯录管理-列表','1','2015-10-29 11:48:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('98697f9278cc4589b23ffe2ee791782f','1','数据采集-通讯录管理-列表','1','2015-10-29 11:47:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('98837b6b96e44166b348ebb8c6a9de87','1','系统设置-机构用户-区域管理','1','2015-10-29 12:00:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_5',''),('99056d7c08344750b01529b9e32c9026','1','系统登录','1','2015-10-29 17:28:54','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','',''),('990a40c5ebcf43d49e90ef9440446694','1','数据采集-数据采集-数据采集','1','2015-10-29 15:07:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('992f3e6b68b146b5b0b18009b487e482','1','数据采集-数据采集-数据采集','1','2015-10-29 15:30:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('993554a12973433ea410c333070d6e23','1','数据采集-数据采集-数据采集','1','2015-10-30 15:23:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('9a04366d72e541b0af1aa040e3da647a','1','系统设置-机构用户-用户管理','1','2015-10-29 11:59:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_5',''),('9a5c3624b4634d48bdf1db7b1f923d99','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:23:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_17',''),('9a6a072e03e946869a23e25e06b593e8','1','代码生成-代码生成-业务表配置','1','2015-10-30 15:19:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_3',''),('9a71c82e08dd4b46b597fc809a58220d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:07:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9ade3d6f6bc9460d94a45dda0b6d5ddc','1','系统设置-机构用户-用户管理-查看','1','2015-10-28 19:35:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9b0a5de9380649c7b073a82df1b037d1','1','系统登录','1','2015-10-30 14:53:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('9bad95cac3b04d2aa0499ba7c74a459f','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:44:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=3',''),('9c0e3460be13415f9b26877a9a7d1257','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:31:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9cc8e4d78e5d40b19b02e2fb5f97ec09','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 15:17:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=f13b7aa1f6184aefba9a601324384532',''),('9d54a9a966004185bcd7ba20e80fb9df','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:54:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9d6d1819a8014914bde8deec83581c7d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:06:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9edac8322f0f4454a8d4b84eb40f803f','1','系统设置-系统设置-角色管理','1','2015-10-29 15:01:28','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('9f311e728b8043f5849d423d6a654a35','1','数据采集-数据采集-数据采集','1','2015-10-30 15:20:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('9f371fc143da4913a7c2c020dc37cbfd','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:06:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9f5092a4b2ed4d7e93de0244c2b8e1c1','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:18:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('9f65f5b693ab425b9af62fa6e8fd33df','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 14:32:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('9f7ccd5d0ef2473bb335e8b0b620374b','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 10:52:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('9f85959a309245088276916efe6c2049','1','数据采集-通讯录管理-列表','1','2015-10-29 15:31:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_4',''),('9f861cbec99f48208f20330d1e1697a7','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:05:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('9ff4a7f1663e4cef95d650d284f3debf','1','我的面板-个人信息-个人信息','1','2015-10-29 10:36:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('a038a14bcaca4d5b9f2c0a179c146155','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:48:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=2185be3f576b4a01be2c70062e25dfdb',''),('a03f3af40c24403daae20f53b5dcfe00','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 15:17:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=f13b7aa1f6184aefba9a601324384532&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=99&isShow=1&permission=&remarks=数据采集',''),('a0f0f8f868344368a29aa95e87d41482','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:41:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('a0f1a3f22f1a4e56b2416d40010afe9c','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 14:28:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('a0ffd002167e487995547e3e4b04c395','1','数据采集-数据采集-数据采集','1','2015-10-30 15:16:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a15cda1235ad4e619ea4a3310454f4fd','1','系统登录','1','2015-10-29 11:46:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('a16ff34b60b44b4196a0439017457363','1','系统设置-机构用户-区域管理','1','2015-10-29 10:31:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','',''),('a1b8e935a3c441f8b122d61dab2cbac4','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 15:17:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('a1bd15bb929e463faf943a1c2f4e6943','1','数据采集-通讯录管理-列表','1','2015-10-30 15:02:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('a1f4b52fdc65449380f21712a5607f06','1','数据采集-数据采集-数据采集','1','2015-10-30 11:48:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a22e072994524b6691f857bca577437c','1','数据采集-数据采集-数据采集','1','2015-10-30 11:28:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a2538a9c36bc469e9284d3e8067ac46f','1','系统设置-机构用户-用户管理','1','2015-10-29 11:47:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('a29c301f245948efb3f42d3b6848dd5b','1','数据采集-数据采集-数据采集','1','2015-10-30 11:59:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a29e7eaf78c94df681e7b3d7b366dde6','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:42:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('a2abf153e5cc4a82981f94eeb45c64eb','1','系统登录','1','2015-10-30 14:26:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('a2b25ab420d849ca8797eabfa3cd3385','1','数据采集-数据采集-数据采集','1','2015-10-29 15:04:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a2cc5b1311114bf4b8252693b991f545','1','系统登录','1','2015-10-30 15:18:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('a30d7f9920e44516ade9e745d8d5aaba','1','数据采集-数据采集-数据采集','1','2015-10-30 11:05:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a34411fe8c2d435b90d79a9b99777819','1','内容管理-内容管理-内容发布','1','2015-10-29 10:36:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_1',''),('a3c8f3b481af45f79abd88dcd9f9f9ea','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:30:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('a3e96313baf94811ae35be43181a93fa','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 14:26:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('a40b3b1fb16a46f59f7af24100c75e7e','1','数据采集-数据采集-数据采集','1','2015-10-29 14:51:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a483883c108a49f7a6bf364febc9c6e1','1','内容管理-栏目设置-切换站点','1','2015-10-29 11:12:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','id=1',''),('a4866b1f38ce48b8b3b713d4f11da7f3','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:49:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/sys/user/info&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('a4be2ddc574047c79f769fa5885971b2','1','代码生成-代码生成-业务表配置','1','2015-10-30 15:06:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_5',''),('a511aa4778c942c694d699a79dda91ae','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:06:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('a53718ddaa0c4716b893464af32451d1','1','内容管理-内容管理-内容发布','1','2015-10-29 15:08:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_2',''),('a572bd9c7acc499bafd686bc0c41a11e','1','系统设置-机构用户-用户管理','1','2015-10-29 11:13:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('a5cdb4e0c1f840a7932875599604131c','1','系统登录','1','2015-10-30 15:19:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('a5fc1969448b479a8018c1c57aeb81a6','1','系统设置-机构用户-区域管理','1','2015-10-30 14:26:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','tabPageId=jerichotabiframe_2',''),('a62dcb0b7edf4b02ac2632318012d08a','1','系统设置-机构用户-区域管理','1','2015-10-29 10:30:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/area/','GET','',''),('a6f9a392e90a4345ad50d5d6a9fba8eb','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:16:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('a71ce099baeb425f9c3575f8ecf59fd8','1','系统设置-系统设置-角色管理','1','2015-10-29 15:02:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('a7aaab5c60bf4fa5bab07422195bc3a5','1','内容管理-内容管理-内容发布','1','2015-10-29 11:12:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_23',''),('a87528d7f93c4740b765ae916c1c3bbf','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=f0ff06b9cbb442c081afc059b3777352&office.name=开发部',''),('a89a0a828fe845b289647001aa4367d8','1','系统设置-系统设置-菜单管理','1','2015-10-30 11:28:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('a8beaf6968634efe8910b6159b8261ca','1','数据采集-数据采集-数据采集','1','2015-10-29 15:58:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('a909bc7ccea84dc5907c060eee7adc4b','1','系统登录','1','2015-10-30 14:42:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable/save','POST','id=&name=collectindexday&comments=1 数据采集指标日表&className=Collectindexday&parentTable=&parentTableFk=&remarks=&columnList[0].id=&columnList[0].delFlag=0&columnList[0].genTable.id=&columnList[0].name=indexid&columnList[0].comments=自增长ID&columnList[0].jdbcType=int(11)&columnList[0].javaType=String&columnList[0].javaField=indexid&_columnList[0].isPk=1&columnList[0].isPk=1&columnList[0].isNull=0&columnList[0].isInsert=0&columnList[0].isEdit=0&columnList[0].isList=0&columnList[0].isQuery=0&columnList[0].queryType==&columnList[0].showType=input&columnList[0].dictType=&columnList[0].sort=10&columnList[1].id=&columnList[1].delFlag=0&columnList[1].genTable.id=&columnList[1].name=indextime&columnList[1].comments=采集指标时间，年月日有效&columnList[1].jdbcType=datetime&columnList[1].javaType=java.util.Date&columnList[1].javaField=indextime&columnList[1].isPk=0&_columnList[1].isNull=1&columnList[1].isNull=1&_columnList[1].isInsert=1&columnList[1].isInsert=1&_columnList[1].isEdit=1&columnList[1].isEdit=1&_columnList[1].isList=1&columnList[1].isList=1&_columnList[1].isQuery=1&columnList[1].isQuery=1&columnList[1].queryType==&columnList[1].showType=dateselect&columnList[1].dictType=&columnList[1].sort=20&columnList[2].id=&columnList[2].delFlag=0&columnList[2].genTable.id=&columnList[2].name=deviceid&columnList[2].comments=仪表ID，=0指系统采集指标；>0指某仪表采集指标 meter表的deviceId列&columnList[2].jdbcType=int(11)&columnList[2].javaType=String&columnList[2].javaField=deviceid&columnList[2].isPk=0&_columnList[2].isNull=1&columnList[2].isNull=1&_columnList[2].isInsert=1&columnList[2].isInsert=1&_columnList[2].isEdit=1&columnList[2].isEdit=1&_columnList[2].isList=1&columnList[2].isList=1&_columnList[2].isQuery=1&columnList[2].isQuery=1&columnList[2].queryType==&columnList[2].showType=input&columnList[2].dictType=&columnList[2].sort=30&columnList[3].id=&columnList[3].delFlag=0&columnList[3].genTable.id=&columnList[3].name=dataeffrate&columnList[3].comments=数据有效率&columnList[3].jdbcType=decimal(4,2)&columnList[3].javaType=String&columnList[3].javaField=dataeffrate&columnList[3].isPk=0&_columnList[3].isNull=1&columnList[3].isNull=1&_columnList[3].isInsert=1&columnList[3].isInsert=1&_columnList[3].isEdit=1&columnList[3].isEdit=1&_columnList[3].isList=1&columnList[3].isList=1&_columnList[3].isQuery=1&columnList[3].isQuery=1&columnList[3].queryType==&columnList[3].showType=input&columnList[3].dictType=&columnList[3].sort=40&columnList[4].id=&columnList[4].delFlag=0&columnList[4].genTable.id=&columnList[4].name=meteronlinerate&columnList[4].comments=仪表在线率&columnList[4].jdbcType=decimal(4,2)&columnList[4].javaType=String&columnList[4].javaField=meteronlinerate&columnList[4].isPk=0&_columnList[4].isNull=1&columnList[4].isNull=1&_columnList[4].isInsert=1&columnList[4].isInsert=1&_columnList[4].isEdit=1&columnList[4].isEdit=1&_columnList[4].isList=1&columnList[4].isList=1&_columnList[4].isQuery=1&columnList[4].isQuery=1&columnList[4].queryType==&columnList[4].showType=input&columnList[4].dictType=&columnList[4].sort=50&columnList[5].id=&columnList[5].delFlag=0&columnList[5].genTable.id=&columnList[5].name=realcollectrate&columnList[5].comments=realcollectrate&columnList[5].jdbcType=decimal(4,2)&columnList[5].javaType=String&columnList[5].javaField=realcollectrate&columnList[5].isPk=0&_columnList[5].isNull=1&columnList[5].isNull=1&_columnList[5].isInsert=1&columnList[5].isInsert=1&_columnList[5].isEdit=1&columnList[5].isEdit=1&_columnList[5].isList=1&columnList[5].isList=1&_columnList[5].isQuery=1&columnList[5].isQuery=1&columnList[5].queryType==&columnList[5].showType=input&columnList[5].dictType=&columnList[5].sort=60&columnList[6].id=&columnList[6].delFlag=0&columnList[6].genTable.id=&columnList[6].name=create_by&columnList[6].comments=创建者&columnList[6].jdbcType=varchar(64)&columnList[6].javaType=com.thinkgem.jeesite.modules.sys.entity.User&columnList[6].javaField=createBy.id&columnList[6].isPk=0&_columnList[6].isNull=1&columnList[6].isNull=1&_columnList[6].isInsert=1&columnList[6].isInsert=1&columnList[6].isEdit=0&_columnList[6].isList=1&columnList[6].isList=1&columnList[6].isQuery=0&columnList[6].queryType==&columnList[6].showType=input&columnList[6].dictType=&columnList[6].sort=70&columnList[7].id=&columnList[7].delFlag=0&columnList[7].genTable.id=&columnList[7].name=create_date&columnList[7].comments=创建时间&columnList[7].jdbcType=datetime&columnList[7].javaType=java.util.Date&columnList[7].javaField=createDate&columnList[7].isPk=0&_columnList[7].isNull=1&columnList[7].isNull=1&_columnList[7].isInsert=1&columnList[7].isInsert=1&columnList[7].isEdit=0&_columnList[7].isList=1&columnList[7].isList=1&columnList[7].isQuery=0&columnList[7].queryType==&columnList[7].showType=dateselect&columnList[7].dictType=&columnList[7].sort=80&columnList[8].id=&columnList[8].delFlag=0&columnList[8].genTable.id=&columnList[8].name=update_by&columnList[8].comments=更新者&columnList[8].jdbcType=varchar(64)&columnList[8].javaType=com.thinkgem.jeesite.modules.sys.entity.User&columnList[8].javaField=updateBy.id&columnList[8].isPk=0&_columnList[8].isNull=1&columnList[8].isNull=1&_columnList[8].isInsert=1&columnList[8].isInsert=1&_columnList[8].isEdit=1&columnList[8].isEdit=1&_columnList[8].isList=1&columnList[8].isList=1&columnList[8].isQuery=0&columnList[8].queryType==&columnList[8].showType=input&columnList[8].dictType=&columnList[8].sort=90&columnList[9].id=&columnList[9].delFlag=0&columnList[9].genTable.id=&columnList[9].name=update_date&columnList[9].comments=更新时间&columnList[9].jdbcType=datetime&columnList[9].javaType=java.util.Date&columnList[9].javaField=updateDate&columnList[9].isPk=0&_columnList[9].isNull=1&columnList[9].isNull=1&_columnList[9].isInsert=1&columnList[9].isInsert=1&_columnList[9].isEdit=1&columnList[9].isEdit=1&_columnList[9].isList=1&columnList[9].isList=1&columnList[9].isQuery=0&columnList[9].queryType==&columnList[9].showType=dateselect&columnList[9].dictType=&columnList[9].sort=100&columnList[10].id=&columnList[10].delFlag=0&columnList[10].genTable.id=&columnList[10].name=remarks&columnList[10].comments=备注信息&columnList[10].jdbcType=varchar(255)&columnList[10].javaType=String&columnList[10].javaField=remarks&columnList[10].isPk=0&_columnList[10].isNull=1&columnList[10].isNull=1&_columnList[10].isInsert=1&columnList[10].isInsert=1&_columnList[10].isEdit=1&columnList[10].isEdit=1&_columnList[10].isList=1&columnList[10].isList=1&columnList[10].isQuery=0&columnList[10].queryType==&columnList[10].showType=textarea&columnList[10].dictType=&columnList[10].sort=110&columnList[11].id=&columnList[11].delFlag=0&columnList[11].genTable.id=&columnList[11].name=del_flag&columnList[11].comments=删除标记&columnList[11].jdbcType=char(1)&columnList[11].javaType=String&columnList[11].javaField=delFlag&columnList[11].isPk=0&columnList[11].isNull=0&_columnList[11].isInsert=1&columnList[11].isInsert=1&columnList[11].isEdit=0&columnList[11].isList=0&columnList[11].isQuery=0&columnList[11].queryType==&columnList[11].showType=radiobox&columnList[11].dictType=del_flag&columnList[11].sort=120',''),('a96306963ca3401ea1396472ccea0a35','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:05:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=1&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=security-role&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('aa1e4a76a92148da8269e8d0e458e06e','1','系统登录','1','2015-10-30 14:14:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('aa5933f0712945b1bf459935a820ba67','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:18:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('aaf841b68407483695470728eb1c3121','1','内容管理-内容管理-内容发布-文章模型','1','2015-10-29 18:01:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/article/','GET','category.id=3',''),('ab0fff8ed0e74b6e97029ba72a4c6a4a','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:42:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('ab91df6831bc46828a18b3f6b5a503ba','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 11:48:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('aba16b58ee7d4ec0aa92a0edf5dc8f5d','1','系统设置-系统设置-字典管理','1','2015-10-29 14:58:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_7',''),('abd3766061304694889cc5a4fb03f96e','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:32:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('ac3d4ac5d22c4714b92a6a1e329e9aa9','1','系统登录','1','2015-10-30 15:32:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('ac4c0fffb9b94be18a3519d4151593b9','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:49:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('ac6f7a126dd24fe6a4307ba4d6d5fac0','1','系统设置-系统设置-菜单管理','1','2015-10-29 14:32:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('ac839301ccff40a381178e901b39c0d1','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:02:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/users','GET','officeId=f0ff06b9cbb442c081afc059b3777352',''),('acb6b4347d884a2aaedaedcbea052541','1','我的面板-个人信息-个人信息','1','2015-10-29 10:50:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ad8499e1eb794152a385e3d260d0a041','1','数据采集-通讯录管理-列表','1','2015-10-29 11:48:36','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('ad972fb14da14e70a6be04ca3656cd44','1','数据采集-通讯录管理-列表','1','2015-10-29 15:30:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('adf3006a60e146ce9adbacafa57e6aff','1','数据采集-通讯录管理-列表','1','2015-10-29 15:04:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('ae614dbbe8d14c74a29e105b62518cad','1','系统设置-日志查询-日志查询','1','2015-10-29 11:11:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/log','GET','tabPageId=jerichotabiframe_17',''),('aea63c59e6a142f386ba370f37374da3','1','数据采集-数据采集-数据采集','1','2015-10-30 15:21:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('af7f3efcd9dd4fe19e936d32aaed8a75','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('afdce41f00de4fe088e9ae0d19d96fd8','1','系统登录','1','2015-10-29 14:45:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('b02f20667ec14c41a611ea518bb4612e','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:04:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('b0749de28a2e41758c3085a8c00a0aa6','1','内容管理-栏目设置-站点设置','1','2015-10-29 10:34:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/','GET','repage=',''),('b08455ee8ba84acebc2079b66ce7915c','1','系统设置-系统设置-角色管理','1','2015-10-29 15:02:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','',''),('b0bd76b7a218489899b1814c62f627a8','1','内容管理-栏目设置-站点设置-查看','1','2015-10-29 10:33:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/form','GET','id=1',''),('b0d0d57900484db68f19349ae170e113','1','系统登录','1','2015-10-29 11:11:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/log','GET','tabPageId=jerichotabiframe_17',''),('b136e951a46042f6a74a71842fba7a74','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:30:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=1&office.name=山东省总公司',''),('b18a07f4bea448d9bcbf1788e7c8b2ff','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 10:30:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/list','GET','id=&parentIds=',''),('b1933bcda7b744acbe76e96bec9875d4','1','数据采集-数据采集-数据采集','1','2015-10-30 11:28:54','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('b35ccf9d04464d89ba750e3b703dbcf4','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('b4f72d7517ec4f32818c6ed5c5549947','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:13:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('b5600a08de644640a2286a22524180a5','1','系统设置-系统设置-字典管理','1','2015-10-30 11:17:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_10',''),('b5725a8b83c844939dbd4ad00424d577','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:09:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/delete','GET','id=6',''),('b59d98feecdf4b99a2314e7512ba7c4e','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:57:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('b6e60878fd524bff803b626d75bed4b5','1','数据采集-数据采集-数据采集','1','2015-10-29 14:45:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('b6f2cd819f3645d9a0813af9dc247a6f','1','内容管理-栏目设置-站点设置-修改','1','2015-10-29 10:34:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/save','POST','id=1&name=默认站点&title=Eospd&logo=&description=Eospd&keywords=Eospd&theme=basic&copyright=\r\n	Copyright © 2015 eospd - Powered By Eospd V1.0\r\n&customIndexView=',''),('b74b58c68e144cf1aea4669ffa49a3fe','1','代码生成-生成示例-主子表-查看','1','2015-10-30 14:36:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain/form','GET','',''),('b830c573184a490399fd6b9b13f74950','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 18:06:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=c345e6ba10514ec49a9f88df02ee6264',''),('b85c9ef15362450083385506218ed1ad','1','系统登录','1','2015-10-30 10:25:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('b94558fcd6bc4d30b4a40a90ce869f41','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:30:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=denofiend&loginName=denofiend',''),('b9804fbbd99f47b497f854b7743184ba','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:59:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/sys/user/index&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('b9bae57769fa4639a43d6ad729a7079a','1','系统设置-系统设置-角色管理-查看','1','2015-10-30 15:19:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('b9ddd83910db469482cf510fcb11817c','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:36:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('ba0262eaa2ec4935963e48e72906fcfd','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 15:06:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=e2e17e5087584d2da2c04a6126d1cdd2&parent.name=表具管理&name=仪表信息表&href=&target=&icon=&sort=60&isShow=1&permission=&remarks=',''),('ba70372d9f9948108ed3129298be28a1','1','内容管理-内容管理','1','2015-10-29 10:34:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('bb35eedb65534f81a4f5fa45ba5e7dd8','1','数据采集-数据采集-数据采集','1','2015-10-30 11:29:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('bb77ad9e16e04239953c5df3b1fc421e','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:19:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('bbf0e9bcb13a46a082fb992bf23edc40','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 14:57:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('bc7d89c65f55468fa6dbb996f977d788','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:58:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('bcd00900f52247eebb7901765258176a','1','我的面板-个人信息-个人信息','1','2015-10-28 19:34:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('bdd996a998e443b582dd64eb341e7fd2','1','数据采集-通讯录管理-列表','1','2015-10-29 18:06:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('bf149dbc2b42418d89681fc169c00171','1','系统登录','1','2015-10-29 15:15:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_7',''),('bf161e0ada0347a7ae6a7c2a56761ec4','1','数据采集-通讯录管理-列表','1','2015-10-30 15:36:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('bf497cdd11914f43beef721e6c527ffd','1','数据采集-数据采集-数据采集','1','2015-10-30 10:37:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('bf717d883b8c4c3d8f3b7a37486f361f','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('bf887f06cd464aa78ca10c24cd5bf569','1','系统登录','1','2015-10-29 10:41:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=62',''),('bfc0c49d9551450b83fd01cbe66e7821','1','数据采集-数据采集-数据采集','1','2015-10-29 16:36:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('bfed59292c7d467c9fc781beb5da0a37','1','数据采集-通讯录管理-列表','1','2015-10-29 12:00:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('c080193ced7944e388b072213305a577','1','系统设置-系统设置-角色管理','1','2015-10-30 15:22:23','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('c12c56be398f4be2857af57f1dd5dd99','1','数据采集-数据采集-数据采集','1','2015-10-30 14:53:37','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c15335ebb38745c08d984eb890152647','1','系统设置-机构用户-机构管理','1','2015-10-29 11:11:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_19',''),('c1a801e758a04a07b29d9585cd36eb2d','1','数据采集-数据采集-数据采集','1','2015-10-29 15:43:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c1dda14302b7439293aa1da8b2d7ad49','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 14:58:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/usertorole','POST','id=2&___t0.4399228582624346=',''),('c1f173098dc64022b9c36d8cfd1aafd7','1','系统设置-机构用户-用户管理-修改','1','2015-10-30 15:21:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=61029703d5c247d0b48f1dc63ce98000&company.name=北京市电子设备科技公司&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&no=0001&name=系统管理员&oldLoginName=denofiend&loginName=denofiend&newPassword=&confirmNewPassword=&email=zab08@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=最高管理员',''),('c2435869d9f7484aa07f0eaa44bbb5ac','1','系统设置-系统设置-字典管理','1','2015-10-30 15:45:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=3&pageSize=30&type=oa_notify_type&description=',''),('c2540f5e46ba47b1ab8f592b2b6226b2','1','数据采集-数据采集-数据采集','1','2015-10-29 14:51:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c2f16fb85bf24d74901babf78e1c2cff','1','数据采集-数据采集-数据采集','1','2015-10-29 18:06:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c35f283341b849c180af1757f2945239','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:13:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据管理&href=&target=&icon=&sort=90&isShow=1&permission=&remarks=',''),('c3c1d049fb764f8783f9f04fba530dac','1','代码生成-生成示例-主子表-查看','1','2015-10-30 14:36:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testDataMain/form','GET','',''),('c3ebc7dddcff45908247b32ab46fbb5b','1','系统设置-系统设置-角色管理','1','2015-10-29 15:05:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('c447f72ccad342e0a1bf0436881b8b4c','1','内容管理-内容管理','1','2015-10-29 10:35:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('c527e040585245df92ffb1d78512ccd7','1','数据采集-数据采集-数据采集','1','2015-10-29 15:16:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c596a366e3a746baabb6d70e1b910491','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:42:45','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('c5bba5f63eb14b26b5f5a53addbaa4b5','1','数据采集-数据采集-数据采集','1','2015-10-30 11:28:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c60a8523f3324f36a87a82e8a74fb3a1','1','数据采集-通讯录管理-列表','1','2015-10-30 15:22:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('c62699d2f20d4aa69a46394f19c5242a','1','数据采集-数据采集-数据采集','1','2015-10-30 14:32:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday/list','GET','tabPageId=jerichotabiframe_0',''),('c6328f668c74433db1f60cc41aae705d','1','数据采集-通讯录管理-列表','1','2015-10-30 14:33:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('c6411cb2bf9a4d379c4f3212cb0595c9','1','数据采集-数据采集-数据采集','1','2015-10-29 14:46:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('c7102404d1664cdabcabc6b8273b9df1','1','内容管理-内容管理-内容发布','1','2015-10-28 19:35:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_5',''),('c7aba0cba0164753917b302b5184c699','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:42:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('c7b9b5befcc944b4a89e7a41533123f0','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:46:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('c7e310e3e24d4d4a91ba0340f6cd07ac','1','系统登录','1','2015-10-30 15:43:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('c880674ab9c94806a366e4194af05ab2','1','数据采集-通讯录管理-列表','1','2015-10-29 18:06:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('c9682d743cca4fabb67334c25a3f843b','1','系统设置-系统设置-角色管理','1','2015-10-29 15:04:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_2',''),('c97e22ac892a44df8fca6c5c90245fe6','1','代码生成-代码生成-业务表配置','1','2015-10-29 14:57:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('c99ab0f305ab467095d97cb3ce694e83','1','内容管理-栏目设置-栏目管理-查看','1','2015-10-29 10:42:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/form','GET','id=2',''),('ca288c5e7a564b50bf09b4d2bcc9b711','1','数据采集-数据采集-数据采集','1','2015-10-30 15:16:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_9',''),('ca4fe8428187454083db1e82252c4268','1','数据采集-数据采集-数据采集','1','2015-10-29 15:04:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('ca9e3a6a54fd43c6aa992615dd754ec7','1','系统设置-机构用户-用户管理','1','2015-10-29 10:41:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_6',''),('caaf88e0c80b4ec180522e673baa5b1f','1','数据采集-数据采集-数据采集','1','2015-10-29 15:17:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('cad7972313b84d1f85bc9640fdc4b916','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 14:29:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('cb5a22e58bb74a039d52132c4918a419','1','系统设置-机构用户-机构管理','1','2015-10-29 15:08:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/','GET','tabPageId=jerichotabiframe_5',''),('cb7b1fd95bd141bfb5e905a333fbbe37','1','系统设置-系统设置-字典管理-查看','1','2015-10-30 15:45:07','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/form','GET','id=66',''),('cbcf715d78be48b4b499504f776b1a20','1','系统登录','1','2015-10-30 11:29:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('cc04fd93a33342f3b6783d98b5e88fd3','1','数据采集-数据采集-数据采集','1','2015-10-29 14:53:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','',''),('cc0bfc10e8c544c689310ca832bcb973','1','系统设置-系统设置-菜单管理','1','2015-10-30 14:34:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('cc1fe06324bc4a5da3f1229cdd12be38','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 11:59:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=46e219abdb3243bfa8fae25e9a2b0558&parent.id=34901c6668144c47bba3a418219afcf4&parent.name=通讯录管理&name=列表&href=/sys/user/index&target=&icon=&sort=31&isShow=1&permission=&remarks=',''),('cc348c4741384a188751b0a6f8e55b14','1','数据采集-数据采集-数据采集','1','2015-10-30 14:29:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday/list','GET','tabPageId=jerichotabiframe_2',''),('cc8b4c0f4e904d70b7f51a71b299a2be','1','内容管理-内容管理-内容发布','1','2015-10-29 10:53:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/','GET','tabPageId=jerichotabiframe_0',''),('cd5abb5eceb44987a10a70367ed65569','1','系统设置-机构用户-用户管理','1','2015-10-29 10:53:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('cd76ee624f414badb72c28f5fe7150b1','1','系统设置-系统设置-菜单管理','1','2015-10-30 14:27:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('cdb0ac69a5d34ecc8af199613bf98be9','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:03:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('ce3e08c111744d6895fb5dca2b9fec4f','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:47:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('cf359447607d4c028e2b8e8ae37498c7','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:35:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('d0af7148d9ec46baa8fcf2305ca2de6f','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:47:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('d0cb644bfdf14f3889ba6f3abfcb42db','1','系统登录','1','2015-10-30 11:28:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('d1148138d53a414e94d6848819466da7','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:48:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('d1297a57d23447a281bbfe8130421285','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 14:58:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/assign','GET','id=2',''),('d279b7479fa844c8973c02fe3c963626','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:21:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('d295571702594c2cbaa5f0c62c70331d','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:50:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('d2ab4be0130e4118b3007f2d07ffc9e6','1','数据采集-数据采集-数据采集','1','2015-10-29 18:06:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('d369f8aaddb54d3d96794b914e06aea6','1','数据采集-数据采集-数据采集','1','2015-10-29 17:29:35','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('d3cf59b5f9514b62904e18e6d3bc3045','1','系统设置-机构用户-用户管理','1','2015-10-29 10:31:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('d3d6e2a0df14457a9103120f53c974fa','1','内容管理-栏目设置-栏目管理-修改','1','2015-10-29 10:36:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/save','POST','id=3&office.id=3&office.name=综合部&parent.id=2&parent.name=组织机构&module=article&name=网站简介&image=&href=&target=&description=&keywords=&sort=30&inMenu=1&inList=1&showModes=0&allowComment=0&isAudit=1&customListView=frontList&customContentView=&viewConfig=',''),('d407380092cc4cf1a8f9a0ace1f127df','1','系统设置-系统设置-角色管理','1','2015-10-30 15:20:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_2',''),('d4a1d0188d2a4da9b9014b6b8d0ed1f0','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:02:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/assign','GET','id=6',''),('d4f0f6f4fb9a4b088d9200cd9ba1fb01','1','系统设置-系统设置-角色管理','1','2015-10-30 15:19:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('d56cdd7a0d0e4dcea04f41edadb05d12','1','系统设置-系统设置-角色管理','1','2015-10-29 15:02:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('d611cbcbde68481a82cf6dec876e6632','1','数据采集-通讯录管理-列表','1','2015-10-29 15:07:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('d658105d6fd14185acf203a82d583e48','1','系统设置-机构用户-用户管理','1','2015-10-29 10:50:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('d6df751785f64d7d99705442b0f035fa','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:29:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','',''),('d704f5cacfab4ae097994c88b4325976','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:20:34','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('d70adc5f8c3e428fb7bc8fea7e2ed7f9','1','数据采集-数据采集-数据采集','1','2015-10-30 11:28:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('d7b619d0345446d78db0196b6177932b','1','系统设置-系统设置-菜单管理','1','2015-10-30 11:28:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('d7f68e022c88467a8b53901f6934d496','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:43:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('d829670e930942889fc0e9e69d981558','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:46:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('d82e10551bf34f7b8c1f4b331fa69f4c','1','数据采集-数据采集-数据采集','1','2015-10-29 15:17:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('d8644465e349484495e94fc9e2fc322c','1','系统设置-机构用户-用户管理-修改','1','2015-10-30 15:20:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=61029703d5c247d0b48f1dc63ce98000&company.name=北京市电子设备科技公司&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&no=0001&name=系统管理员&oldLoginName=denofiend&loginName=denofiend&newPassword=&confirmNewPassword=&email=zab08@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=最高管理员',''),('d8a360895b2d49b88ca6b648aa7584e1','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 16:26:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('d8bd24a22fc94d2b96f74ee4e59fd5d8','1','系统设置-系统设置-菜单管理','1','2015-10-29 12:00:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('d927a78ce05646299feb93657b17db42','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:06:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('d9cae5afcd6945c6bf1253def2364238','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:02:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('da3c5e833d974848b3175c85f5c2dd7d','1','系统设置-系统设置-字典管理','1','2015-10-30 15:45:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=2&pageSize=30&type=sys_area_type&description=',''),('da43b4e6e1c845f68e90a39c6923ebe5','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:07:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('daefa9de19ac42518eba5b1691f59416','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:09:10','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/delete','GET','id=5',''),('dc424fe1b37a4dcb813eced0d6458dc2','1','代码生成-生成示例-单表','1','2015-10-29 14:27:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testData','GET','tabPageId=jerichotabiframe_3',''),('dc8438f05c334ea187a43059fb7fe13e','1','我的面板-个人信息-修改密码','1','2015-10-28 19:35:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/modifyPwd','GET','tabPageId=jerichotabiframe_1',''),('ddf20efdb7d449acaa799537284572f8','1','系统登录','1','2015-10-30 11:04:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('de9f4d4df3ef419f8e412aecb76ec683','1','内容管理-内容管理','1','2015-10-29 11:12:11','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('dfca03ecd68944a29b1b1bdf87654870','1','系统设置-机构用户-用户管理','1','2015-10-29 10:35:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('dfd0b4ee87a94b1f878c213c3ad45729','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:50:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=79&parent.id=1&parent.name=功能菜单&name=代码生成&href=&target=&icon=&sort=5000&isShow=0&permission=&remarks=',''),('dfd23b6bac2f428680e6a461cc2c95e9','1','数据采集-数据采集-数据采集','1','2015-10-30 15:23:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('dfe6576ecba74c448ccd3c12789fdc05','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:02:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=1&office.id=2&office.name=公司领导&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=assignment&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('dff92dfc0e104641b3e7d2822a35aadd','1','系统登录','1','2015-10-29 11:59:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=31',''),('e0113d56145c4f759e0431006434a5a1','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 14:33:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('e0132c635f574ea1a0ca229fec4b727f','1','系统设置-机构用户-用户管理','1','2015-10-29 10:34:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('e017ec4af98344b79eab2c5e299d4756','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:42:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','',''),('e04aa7faf2504f63b6437664b3d96210','1','系统设置-系统设置-菜单管理','1','2015-10-29 15:17:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('e096829002694d938b0330f1e6c19f00','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:21:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('e0a69d9b3f2048ec841a65e389efa2fc','1','内容管理-内容管理-公共留言-查看','1','2015-10-29 11:12:15','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/guestbook/','GET','status=2&tabPageId=jerichotabiframe_25',''),('e0b87274533b4b2b8501f8ace3a5470f','1','数据采集-数据采集-数据采集','1','2015-10-30 14:27:05','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('e0ba7696f02f448c8748dab02c5d377f','1','系统设置-系统设置-角色管理','1','2015-10-30 11:16:29','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','',''),('e0c348e7b2e4476a92701ca5bc0e884a','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 18:01:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=2185be3f576b4a01be2c70062e25dfdb',''),('e0f060c60a2d4913bbd135f57f4fda36','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:59:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('e108a5511c894968b3dacdba446f5d47','1','我的面板-个人信息-个人信息','1','2015-10-29 11:00:19','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_1',''),('e16139fb70ca491cb3168295044edac4','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:13:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','parent.id=f13b7aa1f6184aefba9a601324384532',''),('e20c3ca6dfe14049aa0fe75e3195a402','1','代码生成-代码生成-生成方案配置','1','2015-10-30 14:36:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_6',''),('e217d90ea51643118a46d1a81b5e8f0b','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 10:50:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('e256d6c71d184763b1134815721f571e','1','系统设置-系统设置-字典管理','1','2015-10-30 15:44:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','GET','tabPageId=jerichotabiframe_3',''),('e27dd92bf54e4b119f04519c7ddc902f','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:05:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('e2d22f76e1404be2bd5263fb7457a6f6','1','代码生成-代码生成-业务表配置','1','2015-10-30 15:46:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_9',''),('e2e20826959c496f9ac6b77033daa0bb','1','系统登录','1','2015-10-30 15:23:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('e2e52b2af2ed4e03b3e9487ea19ba4ea','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 14:28:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday/list&target=&icon=icon-arrow-right&sort=30&isShow=1&permission=eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit&remarks=',''),('e3066a7453af4a5a80ff264eb957b1de','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:53:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=f13b7aa1f6184aefba9a601324384532&parent.name=数据采集&name=数据采集&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('e329bc4090264a6181970bcfa7b49868','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:30:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/save','POST','id=1&photo=&company.id=61029703d5c247d0b48f1dc63ce98000&company.name=北京市电子设备科技公司&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&no=0001&name=系统管理员&oldLoginName=denofiend&loginName=denofiend&newPassword=&confirmNewPassword=&email=zab08@163.com&phone=8675&mobile=8675&loginFlag=1&userType=1&roleIdList=1&_roleIdList=on&remarks=最高管理员',''),('e383ee59961e467cb0f7e36aed2f8310','1','系统设置-机构用户-用户管理-修改','1','2015-10-29 15:03:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/checkLoginName','GET','oldLoginName=thinkgem&loginName=denofiend',''),('e3b7549e472f49d79b116290e45121bb','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:21:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('e478429e736c4c96acc62e1d3924b823','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 15:23:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=ef4aa2be83bb4f2c8afc08873092d692&parent.id=e2e17e5087584d2da2c04a6126d1cdd2&parent.name=表具管理&name=仪表信息表&href=/eospd/meter/meter&target=&icon=&sort=60&isShow=1&permission=eospd:meter:meter:view,eospd:meter:meter:edit&remarks=',''),('e48e0d6c66a44e118f40e73405f52ae5','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:36:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_3',''),('e48f58e618b14bdb8c97f02ebf4a60d0','1','数据采集-数据采集-数据采集','1','2015-10-29 15:53:16','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('e4a0335287dd484ebdefba9a7fea3feb','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:32:04','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('e5901b254733424bb58425780b1465e0','1','数据采集-数据采集-数据采集','1','2015-10-29 15:49:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('e5e9c3f10227489db21009a498da9655','1','我的面板-个人信息-个人信息','1','2015-10-29 10:58:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e600a777d8fa413abfc8f03c3b47f518','1','我的面板-个人信息-个人信息','1','2015-10-29 10:29:55','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/info','GET','tabPageId=jerichotabiframe_0',''),('e61af945c9c94d0c9eb67dc3d3f78d2b','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:23:32','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('e6719151074f41aa9a7ee50d05d1191c','1','系统登录','1','2015-10-29 15:29:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('e6accad54ca4425e8e117ce486441908','1','数据采集-表具管理-仪表信息表','1','2015-10-30 15:21:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/meter/meter','GET','tabPageId=jerichotabiframe_1',''),('e79b488c783541c1a90191597341b551','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:06:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_2',''),('e7cab47a2f9c4a1389600981840311c8','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:08:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('e83be271e5ed49a685d18f6fa72f4383','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 15:06:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=e2e17e5087584d2da2c04a6126d1cdd2&parent.name=表具管理&name=数据采集器信息表&href=&target=&icon=&sort=30&isShow=1&permission=&remarks=',''),('e8b3a8e94d7448d0b2f00271a93dfc86','1','系统设置-机构用户-机构管理-查看','1','2015-10-29 15:08:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/form','GET','id=61029703d5c247d0b48f1dc63ce98000',''),('e9295640815440448196328fcfc9fce7','1','代码生成-代码生成-生成方案配置','1','2015-10-30 15:25:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genScheme','GET','tabPageId=jerichotabiframe_3',''),('e93e4fe7447347fdb3762b52679d5b43','1','数据采集-通讯录管理-列表','1','2015-10-29 14:25:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('ea3fad53b7c8446db0cebe0eb905af4a','1','系统登录','1','2015-10-29 16:36:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','',''),('ea44e2bf60df4095a64b1cc8e8d031de','1','数据采集-数据采集-数据采集','1','2015-10-30 14:47:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('ea9be6bc61524b45a4b68f7f759ecb68','1','系统设置-系统设置-字典管理','1','2015-10-30 15:45:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/dict/','POST','pageNo=2&pageSize=30&type=oa_notify_type&description=',''),('eb336fb58f434a869bd0191b778ba331','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:22:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('eb6225b139bf4859b3fa8b14b17b6e4f','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:06:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('eb84b8c85fc54f559e0f4fb681bf07ae','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:49:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_3',''),('ebabbe5cface46cb8df1394d52b8071e','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:29:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('ec0aa0c18bd9450d9649d0adfff744ac','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:31:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','office.id=f0ff06b9cbb442c081afc059b3777352&office.name=开发部',''),('ec12783286c1416fb4cb8905faa8be99','1','代码生成-代码生成-业务表配置','1','2015-10-29 10:41:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_7',''),('ec2aa3f2896342c48c0283b4b39f2a62','1','数据采集-通讯录管理-列表','1','2015-10-29 16:25:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('eccd9dc9dfeb4b79b690af25e7bc1101','1','数据采集-通讯录管理-列表','1','2015-10-30 15:20:21','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('ed583618a4af427ba3bf1f70d3e84211','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:05:25','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('ee1f1a94adaf4dd2b16a14c0ccceab3a','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 15:17:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('ee7bfc690dfd492ebf13cb8c7f1f217b','1','数据采集-通讯录管理-列表','1','2015-10-29 14:57:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_2',''),('ee8d564a2b14461385f3713aead9a84f','1','内容管理-栏目设置-切换站点','1','2015-10-29 18:01:44','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/site/select','GET','tabPageId=jerichotabiframe_3',''),('ef027de75820475a8d46dcbac63a979c','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 15:15:09','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=ef4aa2be83bb4f2c8afc08873092d692',''),('ef41f93a166b486280bc6ac4baedc398','1','数据采集-通讯录管理-列表','1','2015-10-29 11:59:57','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_0',''),('ef5026e49713497d8cce653b311cdcef','1','系统设置-机构用户-机构管理-修改','1','2015-10-29 10:30:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/office/delete','GET','id=1',''),('ef87424656df419d93c40d9fb3ed0b94','1','数据采集-通讯录管理-列表','1','2015-10-29 13:56:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_0',''),('f0591bfab1ad479ba2c9754564376e0b','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:34:48','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_5',''),('f07e797693614a6082bb3a7c8e5bd179','1','数据采集-数据采集-数据采集','1','2015-10-29 15:06:59','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('f0a6baadadab4f6683c99c85b6508c2c','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:21:42','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/form','GET','id=1',''),('f12d052551d645838da56ae767c96aef','1','代码生成-代码生成-业务表配置','1','2015-10-30 14:53:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/gen/genTable','GET','tabPageId=jerichotabiframe_1',''),('f13ccb61c99f49c4b59621819f329eb0','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 11:59:58','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('f187b1a7d3e540618e15378e395700ba','1','数据采集-通讯录管理-列表','1','2015-10-29 11:59:50','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_0',''),('f1b5cdb593074714b708a65954492ed0','1','系统设置-系统设置-角色管理-修改','1','2015-10-29 15:19:30','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/save','POST','id=1&office.id=a19af64eeead41f495641ed1ddb70d77&office.name=人力部&oldName=系统管理员&name=系统管理员&oldEnname=dept&enname=dept&roleType=security-role&sysData=1&useable=1&dataScope=1&menuIds=1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,c345e6ba10514ec49a9f88df02ee6...&officeIds=&remarks=',''),('f1c56004144a4a1592338faa239bf7ce','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 15:15:56','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=ef4aa2be83bb4f2c8afc08873092d692&parent.id=e2e17e5087584d2da2c04a6126d1cdd2&parent.name=表具管理&name=仪表信息表&href=/eospd/meter/meter&target=&icon=&sort=60&isShow=1&permission=eospd:collectmeter:view,eospd:collect:meter:edit&remarks=',''),('f2421fa272de4f35aedba73ab415a732','1','系统设置-系统设置-菜单管理','1','2015-10-29 18:01:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('f287b4a90d4744f3b05e9e98e11c21d7','1','系统登录','1','2015-10-29 15:04:17','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a','GET','login=',''),('f3b46837a01a4fe6965c16a94abb49c8','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 15:43:27','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('f44f0bd41c4145768d6f43993cca4693','1','系统设置-系统设置-菜单管理-修改','1','2015-10-30 14:34:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon=icon-arrow-right&sort=30&isShow=1&permission=eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit&remarks=',''),('f4860f9b679c4ada92dc2563abc84c1d','1','数据采集-数据采集-数据采集','1','2015-10-30 11:57:22','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('f568210b0ff44c28809087656f27beae','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 18:06:46','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=c345e6ba10514ec49a9f88df02ee6264&parent.id=2185be3f576b4a01be2c70062e25dfdb&parent.name=数据采集&name=数据采集&href=/eospd/collect/collectindexday&target=&icon= icon-arrow-right&sort=30&isShow=1&permission=eospd:collect:collectindexday:view&remarks=',''),('f5c7a1f041f24d0b8ff64f1ba38151b8','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:49:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('f5f7c496b79e4cf7b52e5868b779a26c','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:02:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','tabPageId=jerichotabiframe_6',''),('f6e3af8586154cfc9853382bd096adeb','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:13:06','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('f733f0abada7465dafacaaca0fbd0e5a','1','系统设置-系统设置-角色管理','1','2015-10-30 11:13:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_7',''),('f756de8568c8450d89248b661c9608c1','1','系统设置-系统设置-菜单管理','1','2015-10-29 10:51:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('f782e3c18b7645d8b34a88344b8d2672','1','系统设置-系统设置-菜单管理-查看','1','2015-10-29 11:48:14','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=46e219abdb3243bfa8fae25e9a2b0558',''),('f8243382e3164a3fbff492a830996a5f','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 18:01:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('f85a44c88a284ca880f2e66af22ce01b','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:35:43','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','',''),('f862da09af044e8883ea440e71d43844','1','代码生成-生成示例-单表','1','2015-10-30 15:26:13','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/test/testData','GET','tabPageId=jerichotabiframe_5',''),('f8816c838d364f2bbf1276e5e0bd9332','1','系统设置-系统设置-角色管理','1','2015-10-29 14:58:03','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','tabPageId=jerichotabiframe_6',''),('f9838da5853147e48a629c577c93d263','1','内容管理-栏目设置-栏目管理','1','2015-10-29 10:36:20','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/category/','GET','tabPageId=jerichotabiframe_2',''),('fa006301eb3a4cf8aef302ee1c705db8','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 16:36:39','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('fa1988ee6b304b5d98c3ecbdd555f8eb','1','内容管理-内容管理','1','2015-10-29 10:34:41','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/tree','GET','',''),('fa42a9c8236d4c84a32dcbfb9cd98361','1','内容管理-内容管理','1','2015-10-29 18:01:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/cms/none','GET','',''),('fa434e7526394bec94dec2e7a3771683','1','系统设置-机构用户-用户管理-查看','1','2015-10-30 15:20:40','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','repage=',''),('fa838e4258e442c1950a9c5da46ef766','1','数据采集-数据采集-数据采集','1','2015-10-29 15:49:49','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('facde3ac380a43209ec55f02df6a344f','1','系统设置-系统设置-菜单管理','1','2015-10-29 11:00:12','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','',''),('fadae6295b8b444d9d25327cf210f119','1','数据采集-通讯录管理-列表','1','2015-10-30 14:29:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_1',''),('fafb5abb610148fba6626a74460bd966','1','数据采集-数据采集-数据采集','1','2015-10-29 16:26:18','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('fb83486bf1ae4b07af3476919ce3c9e0','1','数据采集-数据采集-数据采集','1','2015-10-29 15:02:53','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('fb9cfffd07b94023b4918febf617b0e5','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 15:19:47','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=ef4aa2be83bb4f2c8afc08873092d692',''),('fbb01fd4e1a84c7482bdeecb6a6a5dba','1','系统登录','1','2015-10-29 17:59:38','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/tree','GET','parentId=27',''),('fbf68f4acac34e218966034703499188','1','数据采集-数据采集-数据采集','1','2015-10-29 15:05:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('fc2b8e76fb6c4c44bf33253245489cf7','1','系统设置-系统设置-菜单管理-查看','1','2015-10-30 11:28:26','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/form','GET','id=90',''),('fcfbdc7b47c54c919596265ad23ec8e7','1','数据采集-通讯录管理-列表','1','2015-10-29 14:31:51','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_5',''),('fcfe558743094625819a0834a2552bb6','1','系统设置-系统设置-角色管理','1','2015-10-29 15:29:08','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('fd28a1ed398d4c0f8e28b8a35d27f33d','1','系统设置-机构用户-用户管理-查看','1','2015-10-29 12:00:01','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/list','GET','',''),('fd2f00a691cc4730815a8482d87d23a9','1','系统设置-系统设置-角色管理','1','2015-10-30 15:23:00','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/','GET','repage=',''),('fe53382fa56c4e5ea62de930a455a28a','1','系统设置-系统设置-菜单管理-修改','1','2015-10-29 10:51:33','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/save','POST','id=&parent.id=1&parent.name=功能菜单&name=数据采集&href=&target=&icon=&sort=5030&isShow=1&permission=&remarks=数据采集',''),('feabc006b4214084b3549162bfd35f35','1','数据采集-通讯录管理-列表','1','2015-10-29 18:06:02','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/user/index','GET','tabPageId=jerichotabiframe_9',''),('ff66341e53a84952b1c80895a6b72539','1','系统设置-系统设置-角色管理-查看','1','2015-10-29 15:19:24','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/role/form','GET','id=1',''),('ffd1a69f2d79490ab01cec4605e24086','1','数据采集-数据采集-数据采集','1','2015-10-30 11:56:52','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/eospd/collect/collectindexday','GET','tabPageId=jerichotabiframe_0',''),('fff9c5240b7f44bea6b0c7b254b61ad3','1','系统设置-系统设置-菜单管理','1','2015-10-30 15:06:31','127.0.0.1','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.152 Safari/537.36','/eospd/a/sys/menu/','GET','','');
/*!40000 ALTER TABLE `sys_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_mdict`
--

DROP TABLE IF EXISTS `sys_mdict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_mdict` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `description` varchar(100) DEFAULT NULL COMMENT '描述',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_mdict_parent_id` (`parent_id`),
  KEY `sys_mdict_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='多级字典表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_mdict`
--

LOCK TABLES `sys_mdict` WRITE;
/*!40000 ALTER TABLE `sys_mdict` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_mdict` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `href` varchar(2000) DEFAULT NULL COMMENT '链接',
  `target` varchar(20) DEFAULT NULL COMMENT '目标',
  `icon` varchar(100) DEFAULT NULL COMMENT '图标',
  `is_show` char(1) NOT NULL COMMENT '是否在菜单中显示',
  `permission` varchar(200) DEFAULT NULL COMMENT '权限标识',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_menu_parent_id` (`parent_id`),
  KEY `sys_menu_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES ('0b2ebd4d639e4c2b83c2dd0764522f24','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','编辑',60,'','','','0','test:testData:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('0ca004d6b1bf4bcab9670a5060d82a55','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','树结构',90,'/test/testTree','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('1','0','0,','功能菜单',0,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('10','3','0,1,2,3,','字典管理',60,'/sys/dict/',NULL,'th-list','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','10','0,1,2,3,10,','查看',30,NULL,NULL,NULL,'0','sys:dict:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','10','0,1,2,3,10,','修改',40,NULL,NULL,NULL,'0','sys:dict:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','2','0,1,2,','机构用户',970,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('14','13','0,1,2,13,','区域管理',50,'/sys/area/',NULL,'th','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('15','14','0,1,2,13,14,','查看',30,NULL,NULL,NULL,'0','sys:area:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('16','14','0,1,2,13,14,','修改',40,NULL,NULL,NULL,'0','sys:area:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('17','13','0,1,2,13,','机构管理',40,'/sys/office/',NULL,'th-large','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('18','17','0,1,2,13,17,','查看',30,NULL,NULL,NULL,'0','sys:office:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('19','17','0,1,2,13,17,','修改',40,NULL,NULL,NULL,'0','sys:office:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','0,1,','系统设置',900,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('20','13','0,1,2,13,','用户管理',30,'/sys/user/index',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('21','20','0,1,2,13,20,','查看',30,NULL,NULL,NULL,'0','sys:user:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2185be3f576b4a01be2c70062e25dfdb','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','数据采集',30,'/eospd/collect/collectindexday','','icon-bar-chart','1','eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit','1','2015-10-29 10:53:00','1','2015-10-30 11:28:40','','0'),('21d5c00da835494c875114bfdb96add0','e2e17e5087584d2da2c04a6126d1cdd2','0,1,f13b7aa1f6184aefba9a601324384532,e2e17e5087584d2da2c04a6126d1cdd2,','数据采集器信息表',30,'','','','1','','1','2015-10-30 15:06:18','1','2015-10-30 15:06:18','','0'),('22','20','0,1,2,13,20,','修改',40,NULL,NULL,NULL,'0','sys:user:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('23','2','0,1,2,','关于帮助',990,NULL,NULL,NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('24','23','0,1,2,23','官方首页',30,'http://jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('25','23','0,1,2,23','项目支持',50,'http://jeesite.com/donation.html','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','23','0,1,2,23','论坛交流',80,'http://bbs.jeesite.com','_blank',NULL,'0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('27','1','0,1,','我的面板',100,'','','','1','','1','2013-05-27 08:00:00','1','2015-10-29 10:53:35','','0'),('28','27','0,1,27,','个人信息',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('29','28','0,1,27,28,','个人信息',30,'/sys/user/info',NULL,'user','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','2','0,1,2,','系统设置',980,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('30','28','0,1,27,28,','修改密码',40,'/sys/user/modifyPwd',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('31','1','0,1,','内容管理',500,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('32','31','0,1,31,','栏目设置',990,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('33','32','0,1,31,32','栏目管理',30,'/cms/category/',NULL,'align-justify','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34','33','0,1,31,32,33,','查看',30,NULL,NULL,NULL,'0','cms:category:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('34901c6668144c47bba3a418219afcf4','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','通讯录管理',60,'','','','1','','1','2015-10-29 10:54:10','1','2015-10-29 10:54:10','','0'),('35','33','0,1,31,32,33,','修改',40,NULL,NULL,NULL,'0','cms:category:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('36','32','0,1,31,32','站点设置',40,'/cms/site/',NULL,'certificate','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('37','36','0,1,31,32,36,','查看',30,NULL,NULL,NULL,'0','cms:site:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('38','36','0,1,31,32,36,','修改',40,NULL,NULL,NULL,'0','cms:site:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('39','32','0,1,31,32','切换站点',50,'/cms/site/select',NULL,'retweet','1','cms:site:select','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3c92c17886944d0687e73e286cada573','79','0,1,79,','生成示例',120,'','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('4','3','0,1,2,3,','菜单管理',30,'/sys/menu/',NULL,'list-alt','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('40','31','0,1,31,','内容管理',500,NULL,NULL,NULL,'1','cms:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('41','40','0,1,31,40,','内容发布',30,'/cms/',NULL,'briefcase','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('42','41','0,1,31,40,41,','文章模型',40,'/cms/article/',NULL,'file','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('43','42','0,1,31,40,41,42,','查看',30,NULL,NULL,NULL,'0','cms:article:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('44','42','0,1,31,40,41,42,','修改',40,NULL,NULL,NULL,'0','cms:article:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('45','42','0,1,31,40,41,42,','审核',50,NULL,NULL,NULL,'0','cms:article:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46','41','0,1,31,40,41,','链接模型',60,'/cms/link/',NULL,'random','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('46e219abdb3243bfa8fae25e9a2b0558','34901c6668144c47bba3a418219afcf4','0,1,f13b7aa1f6184aefba9a601324384532,34901c6668144c47bba3a418219afcf4,','列表',31,'/sys/user/index','','','1','','1','2015-10-29 10:58:05','1','2015-10-29 11:59:40','','0'),('47','46','0,1,31,40,41,46,','查看',30,NULL,NULL,NULL,'0','cms:link:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('48','46','0,1,31,40,41,46,','修改',40,NULL,NULL,NULL,'0','cms:link:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4855cf3b25c244fb8500a380db189d97','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','查看',30,'','','','0','test:testDataMain:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('49','46','0,1,31,40,41,46,','审核',50,NULL,NULL,NULL,'0','cms:link:audit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','4','0,1,2,3,4,','查看',30,NULL,NULL,NULL,'0','sys:menu:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('50','40','0,1,31,40,','评论管理',40,'/cms/comment/?status=2',NULL,'comment','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('51','50','0,1,31,40,50,','查看',30,NULL,NULL,NULL,'0','cms:comment:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('52','50','0,1,31,40,50,','审核',40,NULL,NULL,NULL,'0','cms:comment:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('53','40','0,1,31,40,','公共留言',80,'/cms/guestbook/?status=2',NULL,'glass','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('54','53','0,1,31,40,53,','查看',30,NULL,NULL,NULL,'0','cms:guestbook:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('55','53','0,1,31,40,53,','审核',40,NULL,NULL,NULL,'0','cms:guestbook:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('56','71','0,1,27,71,','文件管理',90,'/../static/ckfinder/ckfinder.html',NULL,'folder-open','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('57','56','0,1,27,40,56,','查看',30,NULL,NULL,NULL,'0','cms:ckfinder:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('58','56','0,1,27,40,56,','上传',40,NULL,NULL,NULL,'0','cms:ckfinder:upload','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('59','56','0,1,27,40,56,','修改',50,NULL,NULL,NULL,'0','cms:ckfinder:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','4','0,1,2,3,4,','修改',40,NULL,NULL,NULL,'0','sys:menu:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('60','31','0,1,31,','统计分析',600,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('61','60','0,1,31,60,','信息量统计',30,'/cms/stats/article',NULL,'tasks','1','cms:stats:article','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('62','1','0,1,','在线办公',200,'','','','0','','1','2013-05-27 08:00:00','1','2015-10-29 10:50:06','','0'),('63','62','0,1,62,','个人办公',30,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('64','63','0,1,62,63,','请假办理',300,'/oa/leave',NULL,'leaf','0',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('65','64','0,1,62,63,64,','查看',30,NULL,NULL,NULL,'0','oa:leave:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66','64','0,1,62,63,64,','修改',40,NULL,NULL,NULL,'0','oa:leave:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('66dbe4878e804a6d977cc1198e77d81c','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','数据管理',90,'','','','1','','1','2015-10-29 11:13:05','1','2015-10-29 11:13:05','','0'),('67','2','0,1,2,','日志查询',985,NULL,NULL,NULL,'1',NULL,'1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('68','67','0,1,2,67,','日志查询',30,'/sys/log',NULL,'pencil','1','sys:log:view','1','2013-06-03 08:00:00','1','2013-06-03 08:00:00',NULL,'0'),('69','62','0,1,62,','流程管理',300,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('7','3','0,1,2,3,','角色管理',50,'/sys/role/',NULL,'lock','1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('70','69','0,1,62,69,','流程管理',50,'/act/process',NULL,'road','1','act:process:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('71','27','0,1,27,','文件管理',90,NULL,NULL,NULL,'1',NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('72','69','0,1,62,69,','模型管理',100,'/act/model',NULL,'road','1','act:model:edit','1','2013-09-20 08:00:00','1','2013-09-20 08:00:00',NULL,'0'),('73','63','0,1,62,63,','我的任务',50,'/act/task/todo/',NULL,'tasks','1',NULL,'1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('74','63','0,1,62,63,','审批测试',100,'/oa/testAudit',NULL,NULL,'1','oa:testAudit:view,oa:testAudit:edit','1','2013-09-24 08:00:00','1','2013-09-24 08:00:00',NULL,'0'),('75','1','0,1,','在线演示',3000,NULL,NULL,NULL,'1',NULL,'1','2013-10-08 08:00:00','1','2013-10-08 08:00:00',NULL,'1'),('79','1','0,1,','代码生成',5000,'','','','1','','1','2013-10-16 08:00:00','1','2015-10-29 14:25:28','','0'),('8','7','0,1,2,3,7,','查看',30,NULL,NULL,NULL,'0','sys:role:view','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('80','79','0,1,79,','代码生成',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('81','80','0,1,79,80,','生成方案配置',30,'/gen/genScheme',NULL,NULL,'1','gen:genScheme:view,gen:genScheme:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('82','80','0,1,79,80,','业务表配置',20,'/gen/genTable',NULL,NULL,'1','gen:genTable:view,gen:genTable:edit,gen:genTableColumn:view,gen:genTableColumn:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'0'),('83','80','0,1,79,80,','代码模板管理',90,'/gen/genTemplate',NULL,NULL,'1','gen:genTemplate:view,gen:genTemplate:edit','1','2013-10-16 08:00:00','1','2013-10-16 08:00:00',NULL,'1'),('84','67','0,1,2,67,','连接池监视',40,'/../druid',NULL,NULL,'1',NULL,'1','2013-10-18 08:00:00','1','2013-10-18 08:00:00',NULL,'0'),('85','76','0,1,75,76,','行政区域',80,'/../static/map/map-city.html',NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'0'),('86','75','0,1,75,','组件演示',50,NULL,NULL,NULL,'1',NULL,'1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('87','86','0,1,75,86,','组件演示',30,'/test/test/form',NULL,NULL,'1','test:test:view,test:test:edit','1','2013-10-22 08:00:00','1','2013-10-22 08:00:00',NULL,'1'),('88','62','0,1,62,','通知通告',20,'','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('89','88','0,1,62,88,','我的通告',30,'/oa/oaNotify/self','','','1','','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('9','7','0,1,2,3,7,','修改',40,NULL,NULL,NULL,'0','sys:role:edit','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('90','88','0,1,62,88,','通告管理',50,'/oa/oaNotify','','','1','oa:oaNotify:view,oa:oaNotify:edit','1','2013-11-08 08:00:00','1','2013-11-08 08:00:00',NULL,'0'),('afab2db430e2457f9cf3a11feaa8b869','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','编辑',60,'','','','0','test:testTree:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b1f6d1b86ba24365bae7fd86c5082317','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','主子表',60,'/test/testDataMain','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('b4e6af5b234445e9ba31eaa848fef3bb','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','能流图',120,'','','','1','','1','2015-10-29 11:13:24','1','2015-10-29 11:13:24','','0'),('ba8092291b40482db8fe7fc006ea3d76','3c92c17886944d0687e73e286cada573','0,1,79,3c92c17886944d0687e73e286cada573,','单表',30,'/test/testData','','','1','','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c2e4d9082a0b4386884a0b203afe2c5c','0ca004d6b1bf4bcab9670a5060d82a55','0,1,79,3c92c17886944d0687e73e286cada573,0ca004d6b1bf4bcab9670a5060d82a55,','查看',30,'','','','0','test:testTree:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('c345e6ba10514ec49a9f88df02ee6264','2185be3f576b4a01be2c70062e25dfdb','0,1,f13b7aa1f6184aefba9a601324384532,2185be3f576b4a01be2c70062e25dfdb,','数据采集',30,'/eospd/collect/collectindexday','','icon-arrow-right','1','eospd:collect:collectindexday:view,eospd:collect:collectindexday:edit','1','2015-10-29 11:49:08','1','2015-10-30 14:34:01','','0'),('d15ec45a4c5449c3bbd7a61d5f9dd1d2','b1f6d1b86ba24365bae7fd86c5082317','0,1,79,3c92c17886944d0687e73e286cada573,b1f6d1b86ba24365bae7fd86c5082317,','编辑',60,'','','','0','test:testDataMain:edit','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('df7ce823c5b24ff9bada43d992f373e2','ba8092291b40482db8fe7fc006ea3d76','0,1,79,3c92c17886944d0687e73e286cada573,ba8092291b40482db8fe7fc006ea3d76,','查看',30,'','','','0','test:testData:view','1','2013-08-12 13:10:05','1','2013-08-12 13:10:05','','0'),('e27c92aafe694f66ae12cba7c4c0b866','34901c6668144c47bba3a418219afcf4','0,1,f13b7aa1f6184aefba9a601324384532,34901c6668144c47bba3a418219afcf4,','拓扑图',60,'','','','1','','1','2015-10-29 10:58:20','1','2015-10-29 10:58:20','','0'),('e2e17e5087584d2da2c04a6126d1cdd2','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','表具管理',150,'','','','1','','1','2015-10-29 11:13:55','1','2015-10-29 11:13:55','','0'),('ee6a2ea2d571452a8f81081191a9441d','f13b7aa1f6184aefba9a601324384532','0,1,f13b7aa1f6184aefba9a601324384532,','系统配置',180,'','','','1','','1','2015-10-29 11:14:12','1','2015-10-29 11:14:12','','0'),('ef4aa2be83bb4f2c8afc08873092d692','e2e17e5087584d2da2c04a6126d1cdd2','0,1,f13b7aa1f6184aefba9a601324384532,e2e17e5087584d2da2c04a6126d1cdd2,','仪表信息表',60,'/eospd/meter/meter','','','1','eospd:meter:meter:view,eospd:meter:meter:edit','1','2015-10-30 15:06:31','1','2015-10-30 15:23:32','','0'),('f13b7aa1f6184aefba9a601324384532','1','0,1,','数据采集',99,'','','','1','','1','2015-10-29 10:51:33','1','2015-10-29 15:17:13','数据采集','0');
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_office`
--

DROP TABLE IF EXISTS `sys_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_office` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `area_id` varchar(64) NOT NULL COMMENT '归属区域',
  `code` varchar(100) DEFAULT NULL COMMENT '区域编码',
  `type` char(1) NOT NULL COMMENT '机构类型',
  `grade` char(1) NOT NULL COMMENT '机构等级',
  `address` varchar(255) DEFAULT NULL COMMENT '联系地址',
  `zip_code` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `master` varchar(100) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `fax` varchar(200) DEFAULT NULL COMMENT '传真',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `USEABLE` varchar(64) DEFAULT NULL COMMENT '是否启用',
  `PRIMARY_PERSON` varchar(64) DEFAULT NULL COMMENT '主负责人',
  `DEPUTY_PERSON` varchar(64) DEFAULT NULL COMMENT '副负责人',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_office_parent_id` (`parent_id`),
  KEY `sys_office_del_flag` (`del_flag`),
  KEY `sys_office_type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_office`
--

LOCK TABLES `sys_office` WRITE;
/*!40000 ALTER TABLE `sys_office` DISABLE KEYS */;
INSERT INTO `sys_office` VALUES ('1','0','0,','山东省总公司',10,'2','100000','1','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('10','7','0,1,7,','市场部',30,'3','200003','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('11','7','0,1,7,','技术部',40,'3','200004','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('12','7','0,1,7,','历城区分公司',0,'4','201000','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('13','12','0,1,7,12,','公司领导',10,'4','201001','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('14','12','0,1,7,12,','综合部',20,'4','201002','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('15','12','0,1,7,12,','市场部',30,'4','201003','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('16','12','0,1,7,12,','技术部',40,'4','201004','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('17','7','0,1,7,','历下区分公司',40,'5','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('18','17','0,1,7,17,','公司领导',10,'5','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('19','17','0,1,7,17,','综合部',20,'5','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('2','1','0,1,','公司领导',10,'2','100001','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('20','17','0,1,7,17,','市场部',30,'5','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('21','17','0,1,7,17,','技术部',40,'5','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('22','7','0,1,7,','高新区分公司',50,'6','201010','1','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('23','22','0,1,7,22,','公司领导',10,'6','201011','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('24','22','0,1,7,22,','综合部',20,'6','201012','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('25','22','0,1,7,22,','市场部',30,'6','201013','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('26','22','0,1,7,22,','技术部',40,'6','201014','2','3',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('3','1','0,1,','综合部',20,'2','100002','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('4','1','0,1,','市场部',30,'2','100003','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','0,1,','技术部',40,'2','100004','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('6','1','0,1,','研发部',50,'2','100005','2','1',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('61029703d5c247d0b48f1dc63ce98000','0','0,','北京市电子设备科技公司',30,'d09686c9297e4535ab675c819bf12023','','1','1','','','','','','','1','','','1','2015-10-29 10:31:56','1','2015-10-29 15:08:39','','0'),('7','1','0,1,','济南市分公司',20,'3','200000','1','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('8','7','0,1,7,','公司领导',10,'3','200001','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('9','7','0,1,7,','综合部',20,'3','200002','2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('a19af64eeead41f495641ed1ddb70d77','61029703d5c247d0b48f1dc63ce98000','0,61029703d5c247d0b48f1dc63ce98000,','人力部',30,'d09686c9297e4535ab675c819bf12023',NULL,'2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2015-10-29 10:31:57','1','2015-10-29 10:31:57',NULL,'0'),('f0ff06b9cbb442c081afc059b3777352','61029703d5c247d0b48f1dc63ce98000','0,61029703d5c247d0b48f1dc63ce98000,','开发部',30,'d09686c9297e4535ab675c819bf12023',NULL,'2','2',NULL,NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'1','2015-10-29 10:31:57','1','2015-10-29 10:31:57',NULL,'0');
/*!40000 ALTER TABLE `sys_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属机构',
  `name` varchar(100) NOT NULL COMMENT '角色名称',
  `enname` varchar(255) DEFAULT NULL COMMENT '英文名称',
  `role_type` varchar(255) DEFAULT NULL COMMENT '角色类型',
  `data_scope` char(1) DEFAULT NULL COMMENT '数据范围',
  `is_sys` varchar(64) DEFAULT NULL COMMENT '是否系统数据',
  `useable` varchar(64) DEFAULT NULL COMMENT '是否可用',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_role_del_flag` (`del_flag`),
  KEY `sys_role_enname` (`enname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES ('1','a19af64eeead41f495641ed1ddb70d77','系统管理员','dept','assignment','1','1','1','1','2013-05-27 08:00:00','1','2015-10-30 15:19:20','','0'),('2','2','公司管理员','hr','assignment','2','1','1','1','2013-05-27 08:00:00','1','2015-10-29 15:01:27','','0'),('3','1','本公司管理员','a','assignment','3',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('4','1','部门管理员','b','assignment','4',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('5','1','本部门管理员','c','assignment','5',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('6','2','普通用户','d','user','8','1','1','1','2013-05-27 08:00:00','1','2015-10-29 15:02:01','','0'),('7','7','济南市管理员','e','assignment','9',NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9eaec5d7aff94d94aa2f77625754cd75','a19af64eeead41f495641ed1ddb70d77','超级管理员','super_admin','assignment','1','1','1','1','2015-10-29 15:29:37','1','2015-10-30 15:23:00','','0');
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `menu_id` varchar(64) NOT NULL COMMENT '菜单编号',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-菜单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES ('1','0b2ebd4d639e4c2b83c2dd0764522f24'),('1','0ca004d6b1bf4bcab9670a5060d82a55'),('1','1'),('1','10'),('1','11'),('1','12'),('1','13'),('1','14'),('1','15'),('1','16'),('1','17'),('1','18'),('1','19'),('1','2'),('1','20'),('1','21'),('1','2185be3f576b4a01be2c70062e25dfdb'),('1','21d5c00da835494c875114bfdb96add0'),('1','22'),('1','23'),('1','24'),('1','27'),('1','28'),('1','29'),('1','3'),('1','30'),('1','31'),('1','32'),('1','33'),('1','34'),('1','34901c6668144c47bba3a418219afcf4'),('1','35'),('1','36'),('1','37'),('1','38'),('1','39'),('1','3c92c17886944d0687e73e286cada573'),('1','4'),('1','40'),('1','41'),('1','42'),('1','43'),('1','44'),('1','45'),('1','46'),('1','46e219abdb3243bfa8fae25e9a2b0558'),('1','47'),('1','48'),('1','4855cf3b25c244fb8500a380db189d97'),('1','49'),('1','5'),('1','50'),('1','51'),('1','52'),('1','53'),('1','54'),('1','55'),('1','56'),('1','57'),('1','58'),('1','59'),('1','6'),('1','60'),('1','61'),('1','62'),('1','63'),('1','64'),('1','65'),('1','66'),('1','66dbe4878e804a6d977cc1198e77d81c'),('1','67'),('1','68'),('1','69'),('1','7'),('1','70'),('1','71'),('1','72'),('1','73'),('1','74'),('1','79'),('1','8'),('1','80'),('1','81'),('1','82'),('1','84'),('1','85'),('1','88'),('1','89'),('1','9'),('1','90'),('1','afab2db430e2457f9cf3a11feaa8b869'),('1','b1f6d1b86ba24365bae7fd86c5082317'),('1','b4e6af5b234445e9ba31eaa848fef3bb'),('1','ba8092291b40482db8fe7fc006ea3d76'),('1','c2e4d9082a0b4386884a0b203afe2c5c'),('1','c345e6ba10514ec49a9f88df02ee6264'),('1','d15ec45a4c5449c3bbd7a61d5f9dd1d2'),('1','df7ce823c5b24ff9bada43d992f373e2'),('1','e27c92aafe694f66ae12cba7c4c0b866'),('1','e2e17e5087584d2da2c04a6126d1cdd2'),('1','ee6a2ea2d571452a8f81081191a9441d'),('1','ef4aa2be83bb4f2c8afc08873092d692'),('1','f13b7aa1f6184aefba9a601324384532'),('2','1'),('2','10'),('2','11'),('2','12'),('2','13'),('2','14'),('2','15'),('2','16'),('2','17'),('2','18'),('2','19'),('2','2'),('2','20'),('2','21'),('2','2185be3f576b4a01be2c70062e25dfdb'),('2','22'),('2','23'),('2','24'),('2','27'),('2','28'),('2','29'),('2','3'),('2','30'),('2','31'),('2','32'),('2','33'),('2','34'),('2','34901c6668144c47bba3a418219afcf4'),('2','35'),('2','36'),('2','37'),('2','38'),('2','39'),('2','4'),('2','40'),('2','41'),('2','42'),('2','43'),('2','44'),('2','45'),('2','46'),('2','46e219abdb3243bfa8fae25e9a2b0558'),('2','47'),('2','48'),('2','49'),('2','5'),('2','50'),('2','51'),('2','52'),('2','53'),('2','54'),('2','55'),('2','56'),('2','57'),('2','58'),('2','59'),('2','6'),('2','60'),('2','61'),('2','62'),('2','63'),('2','64'),('2','65'),('2','66'),('2','66dbe4878e804a6d977cc1198e77d81c'),('2','67'),('2','68'),('2','69'),('2','7'),('2','70'),('2','71'),('2','72'),('2','73'),('2','74'),('2','79'),('2','8'),('2','80'),('2','81'),('2','82'),('2','84'),('2','85'),('2','88'),('2','89'),('2','9'),('2','90'),('2','b4e6af5b234445e9ba31eaa848fef3bb'),('2','c345e6ba10514ec49a9f88df02ee6264'),('2','e27c92aafe694f66ae12cba7c4c0b866'),('2','e2e17e5087584d2da2c04a6126d1cdd2'),('2','ee6a2ea2d571452a8f81081191a9441d'),('2','f13b7aa1f6184aefba9a601324384532'),('3','1'),('3','10'),('3','11'),('3','12'),('3','13'),('3','14'),('3','15'),('3','16'),('3','17'),('3','18'),('3','19'),('3','2'),('3','20'),('3','21'),('3','22'),('3','23'),('3','24'),('3','25'),('3','26'),('3','27'),('3','28'),('3','29'),('3','3'),('3','30'),('3','31'),('3','32'),('3','33'),('3','34'),('3','35'),('3','36'),('3','37'),('3','38'),('3','39'),('3','4'),('3','40'),('3','41'),('3','42'),('3','43'),('3','44'),('3','45'),('3','46'),('3','47'),('3','48'),('3','49'),('3','5'),('3','50'),('3','51'),('3','52'),('3','53'),('3','54'),('3','55'),('3','56'),('3','57'),('3','58'),('3','59'),('3','6'),('3','60'),('3','61'),('3','62'),('3','63'),('3','64'),('3','65'),('3','66'),('3','67'),('3','68'),('3','69'),('3','7'),('3','70'),('3','71'),('3','72'),('3','73'),('3','74'),('3','75'),('3','76'),('3','77'),('3','78'),('3','79'),('3','8'),('3','80'),('3','81'),('3','82'),('3','83'),('3','84'),('3','85'),('3','86'),('3','87'),('3','88'),('3','89'),('3','9'),('3','90'),('6','1'),('6','2185be3f576b4a01be2c70062e25dfdb'),('6','27'),('6','28'),('6','29'),('6','30'),('6','34901c6668144c47bba3a418219afcf4'),('6','46e219abdb3243bfa8fae25e9a2b0558'),('6','56'),('6','57'),('6','58'),('6','59'),('6','66dbe4878e804a6d977cc1198e77d81c'),('6','71'),('6','b4e6af5b234445e9ba31eaa848fef3bb'),('6','c345e6ba10514ec49a9f88df02ee6264'),('6','e27c92aafe694f66ae12cba7c4c0b866'),('6','e2e17e5087584d2da2c04a6126d1cdd2'),('6','ee6a2ea2d571452a8f81081191a9441d'),('6','f13b7aa1f6184aefba9a601324384532'),('9eaec5d7aff94d94aa2f77625754cd75','0b2ebd4d639e4c2b83c2dd0764522f24'),('9eaec5d7aff94d94aa2f77625754cd75','0ca004d6b1bf4bcab9670a5060d82a55'),('9eaec5d7aff94d94aa2f77625754cd75','1'),('9eaec5d7aff94d94aa2f77625754cd75','10'),('9eaec5d7aff94d94aa2f77625754cd75','11'),('9eaec5d7aff94d94aa2f77625754cd75','12'),('9eaec5d7aff94d94aa2f77625754cd75','13'),('9eaec5d7aff94d94aa2f77625754cd75','14'),('9eaec5d7aff94d94aa2f77625754cd75','15'),('9eaec5d7aff94d94aa2f77625754cd75','16'),('9eaec5d7aff94d94aa2f77625754cd75','17'),('9eaec5d7aff94d94aa2f77625754cd75','18'),('9eaec5d7aff94d94aa2f77625754cd75','19'),('9eaec5d7aff94d94aa2f77625754cd75','2'),('9eaec5d7aff94d94aa2f77625754cd75','20'),('9eaec5d7aff94d94aa2f77625754cd75','21'),('9eaec5d7aff94d94aa2f77625754cd75','2185be3f576b4a01be2c70062e25dfdb'),('9eaec5d7aff94d94aa2f77625754cd75','21d5c00da835494c875114bfdb96add0'),('9eaec5d7aff94d94aa2f77625754cd75','22'),('9eaec5d7aff94d94aa2f77625754cd75','23'),('9eaec5d7aff94d94aa2f77625754cd75','24'),('9eaec5d7aff94d94aa2f77625754cd75','27'),('9eaec5d7aff94d94aa2f77625754cd75','28'),('9eaec5d7aff94d94aa2f77625754cd75','29'),('9eaec5d7aff94d94aa2f77625754cd75','3'),('9eaec5d7aff94d94aa2f77625754cd75','30'),('9eaec5d7aff94d94aa2f77625754cd75','31'),('9eaec5d7aff94d94aa2f77625754cd75','32'),('9eaec5d7aff94d94aa2f77625754cd75','33'),('9eaec5d7aff94d94aa2f77625754cd75','34'),('9eaec5d7aff94d94aa2f77625754cd75','34901c6668144c47bba3a418219afcf4'),('9eaec5d7aff94d94aa2f77625754cd75','35'),('9eaec5d7aff94d94aa2f77625754cd75','36'),('9eaec5d7aff94d94aa2f77625754cd75','37'),('9eaec5d7aff94d94aa2f77625754cd75','38'),('9eaec5d7aff94d94aa2f77625754cd75','39'),('9eaec5d7aff94d94aa2f77625754cd75','3c92c17886944d0687e73e286cada573'),('9eaec5d7aff94d94aa2f77625754cd75','4'),('9eaec5d7aff94d94aa2f77625754cd75','40'),('9eaec5d7aff94d94aa2f77625754cd75','41'),('9eaec5d7aff94d94aa2f77625754cd75','42'),('9eaec5d7aff94d94aa2f77625754cd75','43'),('9eaec5d7aff94d94aa2f77625754cd75','44'),('9eaec5d7aff94d94aa2f77625754cd75','45'),('9eaec5d7aff94d94aa2f77625754cd75','46'),('9eaec5d7aff94d94aa2f77625754cd75','46e219abdb3243bfa8fae25e9a2b0558'),('9eaec5d7aff94d94aa2f77625754cd75','47'),('9eaec5d7aff94d94aa2f77625754cd75','48'),('9eaec5d7aff94d94aa2f77625754cd75','4855cf3b25c244fb8500a380db189d97'),('9eaec5d7aff94d94aa2f77625754cd75','49'),('9eaec5d7aff94d94aa2f77625754cd75','5'),('9eaec5d7aff94d94aa2f77625754cd75','50'),('9eaec5d7aff94d94aa2f77625754cd75','51'),('9eaec5d7aff94d94aa2f77625754cd75','52'),('9eaec5d7aff94d94aa2f77625754cd75','53'),('9eaec5d7aff94d94aa2f77625754cd75','54'),('9eaec5d7aff94d94aa2f77625754cd75','55'),('9eaec5d7aff94d94aa2f77625754cd75','56'),('9eaec5d7aff94d94aa2f77625754cd75','57'),('9eaec5d7aff94d94aa2f77625754cd75','58'),('9eaec5d7aff94d94aa2f77625754cd75','59'),('9eaec5d7aff94d94aa2f77625754cd75','6'),('9eaec5d7aff94d94aa2f77625754cd75','60'),('9eaec5d7aff94d94aa2f77625754cd75','61'),('9eaec5d7aff94d94aa2f77625754cd75','62'),('9eaec5d7aff94d94aa2f77625754cd75','63'),('9eaec5d7aff94d94aa2f77625754cd75','64'),('9eaec5d7aff94d94aa2f77625754cd75','65'),('9eaec5d7aff94d94aa2f77625754cd75','66'),('9eaec5d7aff94d94aa2f77625754cd75','66dbe4878e804a6d977cc1198e77d81c'),('9eaec5d7aff94d94aa2f77625754cd75','67'),('9eaec5d7aff94d94aa2f77625754cd75','68'),('9eaec5d7aff94d94aa2f77625754cd75','69'),('9eaec5d7aff94d94aa2f77625754cd75','7'),('9eaec5d7aff94d94aa2f77625754cd75','70'),('9eaec5d7aff94d94aa2f77625754cd75','71'),('9eaec5d7aff94d94aa2f77625754cd75','72'),('9eaec5d7aff94d94aa2f77625754cd75','73'),('9eaec5d7aff94d94aa2f77625754cd75','74'),('9eaec5d7aff94d94aa2f77625754cd75','79'),('9eaec5d7aff94d94aa2f77625754cd75','8'),('9eaec5d7aff94d94aa2f77625754cd75','80'),('9eaec5d7aff94d94aa2f77625754cd75','81'),('9eaec5d7aff94d94aa2f77625754cd75','82'),('9eaec5d7aff94d94aa2f77625754cd75','84'),('9eaec5d7aff94d94aa2f77625754cd75','85'),('9eaec5d7aff94d94aa2f77625754cd75','88'),('9eaec5d7aff94d94aa2f77625754cd75','89'),('9eaec5d7aff94d94aa2f77625754cd75','9'),('9eaec5d7aff94d94aa2f77625754cd75','90'),('9eaec5d7aff94d94aa2f77625754cd75','afab2db430e2457f9cf3a11feaa8b869'),('9eaec5d7aff94d94aa2f77625754cd75','b1f6d1b86ba24365bae7fd86c5082317'),('9eaec5d7aff94d94aa2f77625754cd75','b4e6af5b234445e9ba31eaa848fef3bb'),('9eaec5d7aff94d94aa2f77625754cd75','ba8092291b40482db8fe7fc006ea3d76'),('9eaec5d7aff94d94aa2f77625754cd75','c2e4d9082a0b4386884a0b203afe2c5c'),('9eaec5d7aff94d94aa2f77625754cd75','c345e6ba10514ec49a9f88df02ee6264'),('9eaec5d7aff94d94aa2f77625754cd75','d15ec45a4c5449c3bbd7a61d5f9dd1d2'),('9eaec5d7aff94d94aa2f77625754cd75','df7ce823c5b24ff9bada43d992f373e2'),('9eaec5d7aff94d94aa2f77625754cd75','e27c92aafe694f66ae12cba7c4c0b866'),('9eaec5d7aff94d94aa2f77625754cd75','e2e17e5087584d2da2c04a6126d1cdd2'),('9eaec5d7aff94d94aa2f77625754cd75','ee6a2ea2d571452a8f81081191a9441d'),('9eaec5d7aff94d94aa2f77625754cd75','ef4aa2be83bb4f2c8afc08873092d692'),('9eaec5d7aff94d94aa2f77625754cd75','f13b7aa1f6184aefba9a601324384532');
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_office`
--

DROP TABLE IF EXISTS `sys_role_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_office` (
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  `office_id` varchar(64) NOT NULL COMMENT '机构编号',
  PRIMARY KEY (`role_id`,`office_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色-机构';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_office`
--

LOCK TABLES `sys_role_office` WRITE;
/*!40000 ALTER TABLE `sys_role_office` DISABLE KEYS */;
INSERT INTO `sys_role_office` VALUES ('7','10'),('7','11'),('7','12'),('7','13'),('7','14'),('7','15'),('7','16'),('7','17'),('7','18'),('7','19'),('7','20'),('7','21'),('7','22'),('7','23'),('7','24'),('7','25'),('7','26'),('7','7'),('7','8'),('7','9');
/*!40000 ALTER TABLE `sys_role_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `company_id` varchar(64) NOT NULL COMMENT '归属公司',
  `office_id` varchar(64) NOT NULL COMMENT '归属部门',
  `login_name` varchar(100) NOT NULL COMMENT '登录名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `no` varchar(100) DEFAULT NULL COMMENT '工号',
  `name` varchar(100) NOT NULL COMMENT '姓名',
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(200) DEFAULT NULL COMMENT '电话',
  `mobile` varchar(200) DEFAULT NULL COMMENT '手机',
  `user_type` char(1) DEFAULT NULL COMMENT '用户类型',
  `photo` varchar(1000) DEFAULT NULL COMMENT '用户头像',
  `login_ip` varchar(100) DEFAULT NULL COMMENT '最后登陆IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登陆时间',
  `login_flag` varchar(64) DEFAULT NULL COMMENT '是否可登录',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `sys_user_office_id` (`office_id`),
  KEY `sys_user_login_name` (`login_name`),
  KEY `sys_user_company_id` (`company_id`),
  KEY `sys_user_update_date` (`update_date`),
  KEY `sys_user_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES ('1','61029703d5c247d0b48f1dc63ce98000','a19af64eeead41f495641ed1ddb70d77','denofiend','05fa1adfa23734ae3911e356ab90a7c70effd66daee7c3c9667a2fe6','0001','系统管理员','zab08@163.com','8675','8675','1','','127.0.0.1','2015-10-30 15:43:41','1','1','2013-05-27 08:00:00','1','2015-10-30 15:21:48','最高管理员','0'),('10','7','11','jn_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0010','济南技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('11','12','13','lc_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0011','济南历城领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('12','12','18','lx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0012','济南历下领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('13','22','23','gx_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0013','济南高新领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('2','1','2','sd_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0002','管理员',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('3','1','3','sd_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0003','综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('4','1','4','sd_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0004','市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('5','1','5','sd_jsb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0005','技术部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('52a338dd6fc04a739cc52dc0beeb33b9','61029703d5c247d0b48f1dc63ce98000','a19af64eeead41f495641ed1ddb70d77','huangshiguang','5e22a54140e82cf2212747f4c8cc37788799fc061a7e8dc0626d0751','0002','huang','','','','1','',NULL,NULL,'1','1','2015-10-29 15:43:26','1','2015-10-29 15:43:26','','0'),('6','1','6','sd_yfb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0006','研发部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'1'),('7','7','8','jn_admin','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0007','济南领导',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('8','7','9','jn_zhb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0008','济南综合部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0'),('9','7','10','jn_scb','02a3f0772fcca9f415adc990734b45c6f059c7d33ee28362c4852032','0009','济南市场部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','1','2013-05-27 08:00:00','1','2013-05-27 08:00:00',NULL,'0');
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `user_id` varchar(64) NOT NULL COMMENT '用户编号',
  `role_id` varchar(64) NOT NULL COMMENT '角色编号',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户-角色';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES ('1','1'),('1','9eaec5d7aff94d94aa2f77625754cd75'),('10','2'),('11','3'),('12','4'),('13','5'),('14','6'),('2','1'),('3','2'),('4','3'),('5','4'),('52a338dd6fc04a739cc52dc0beeb33b9','1'),('52a338dd6fc04a739cc52dc0beeb33b9','9eaec5d7aff94d94aa2f77625754cd75'),('6','5'),('7','2'),('7','7'),('8','2'),('9','1');
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data`
--

DROP TABLE IF EXISTS `test_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data`
--

LOCK TABLES `test_data` WRITE;
/*!40000 ALTER TABLE `test_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_child`
--

DROP TABLE IF EXISTS `test_data_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_child` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `test_data_main_id` varchar(64) DEFAULT NULL COMMENT '业务主表ID',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_child_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据子表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_child`
--

LOCK TABLES `test_data_child` WRITE;
/*!40000 ALTER TABLE `test_data_child` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_data_main`
--

DROP TABLE IF EXISTS `test_data_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_data_main` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `user_id` varchar(64) DEFAULT NULL COMMENT '归属用户',
  `office_id` varchar(64) DEFAULT NULL COMMENT '归属部门',
  `area_id` varchar(64) DEFAULT NULL COMMENT '归属区域',
  `name` varchar(100) DEFAULT NULL COMMENT '名称',
  `sex` char(1) DEFAULT NULL COMMENT '性别',
  `in_date` date DEFAULT NULL COMMENT '加入日期',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_data_main_del_flag` (`del_flag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='业务数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_data_main`
--

LOCK TABLES `test_data_main` WRITE;
/*!40000 ALTER TABLE `test_data_main` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_data_main` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_tree`
--

DROP TABLE IF EXISTS `test_tree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_tree` (
  `id` varchar(64) NOT NULL COMMENT '编号',
  `parent_id` varchar(64) NOT NULL COMMENT '父级编号',
  `parent_ids` varchar(2000) NOT NULL COMMENT '所有父级编号',
  `name` varchar(100) NOT NULL COMMENT '名称',
  `sort` decimal(10,0) NOT NULL COMMENT '排序',
  `create_by` varchar(64) NOT NULL COMMENT '创建者',
  `create_date` datetime NOT NULL COMMENT '创建时间',
  `update_by` varchar(64) NOT NULL COMMENT '更新者',
  `update_date` datetime NOT NULL COMMENT '更新时间',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT '删除标记',
  PRIMARY KEY (`id`),
  KEY `test_tree_del_flag` (`del_flag`),
  KEY `test_data_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='树结构表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_tree`
--

LOCK TABLES `test_tree` WRITE;
/*!40000 ALTER TABLE `test_tree` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_tree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eospd'
--

--
-- Dumping routines for database 'eospd'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-30 15:48:53

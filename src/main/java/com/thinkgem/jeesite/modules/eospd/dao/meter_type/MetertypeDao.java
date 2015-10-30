/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.dao.meter_type;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.eospd.entity.meter_type.Metertype;

/**
 * 仪表型号信息DAO接口
 * @author denofiend
 * @version 2015-10-30
 */
@MyBatisDao
public interface MetertypeDao extends CrudDao<Metertype> {
	
}
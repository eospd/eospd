/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.dao.circuitinfo;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.eospd.entity.circuitinfo.Circuitinfo;

/**
 * 电支路信息DAO接口
 * @author denofiend
 * @version 2015-10-30
 */
@MyBatisDao
public interface CircuitinfoDao extends CrudDao<Circuitinfo> {
	
}
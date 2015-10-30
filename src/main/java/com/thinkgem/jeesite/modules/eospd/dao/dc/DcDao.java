/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.dao.dc;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.eospd.entity.dc.Dc;

/**
 * 数据采集器信息DAO接口
 * @author denofiend
 * @version 2015-10-30
 */
@MyBatisDao
public interface DcDao extends CrudDao<Dc> {
	
}
/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.dao.devonline;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.eospd.entity.devonline.Devonline;

/**
 * 设备在线状态历史DAO接口
 * @author denofiend
 * @version 2015-10-30
 */
@MyBatisDao
public interface DevonlineDao extends CrudDao<Devonline> {
	
}
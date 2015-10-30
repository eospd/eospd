/**
 * Copyright &copy; 2012-2014 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.eospd.service.devonline;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.eospd.entity.devonline.Devonline;
import com.thinkgem.jeesite.modules.eospd.dao.devonline.DevonlineDao;

/**
 * 设备在线状态历史Service
 * @author denofiend
 * @version 2015-10-30
 */
@Service
@Transactional(readOnly = true)
public class DevonlineService extends CrudService<DevonlineDao, Devonline> {

	public Devonline get(String id) {
		return super.get(id);
	}
	
	public List<Devonline> findList(Devonline devonline) {
		return super.findList(devonline);
	}
	
	public Page<Devonline> findPage(Page<Devonline> page, Devonline devonline) {
		return super.findPage(page, devonline);
	}
	
	@Transactional(readOnly = false)
	public void save(Devonline devonline) {
		super.save(devonline);
	}
	
	@Transactional(readOnly = false)
	public void delete(Devonline devonline) {
		super.delete(devonline);
	}
	
}